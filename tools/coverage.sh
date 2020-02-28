#!/bin/bash
#
# Usage
#
#   COVERAGE_CPUS=32 tools/coverage.sh [/path/to/report-directory/]
#
# COVERAGE_CPUS defaults to 2, and the default destination is a temp
# dir.

genhtml=$(which genhtml)
if [[ -z "${genhtml}" ]]; then
    echo "Install 'genhtml' (contained in the 'lcov' package)"
    exit 1
fi

destdir="$1"
if [[ -z "${destdir}" ]]; then
    destdir=$(mktemp -d /tmp/gerritcov.XXXXXX)
fi

echo "Running 'bazel coverage'; this may take a while"

# coverage is expensive to run; use --jobs=2 to avoid overloading the
# machine.
bazel coverage -k --jobs=${COVERAGE_CPUS:-2} --extra_toolchains="@io_bazel_rules_scala//test/coverage:enable_code_coverage_aspect" -- ...

mkdir -p ${destdir}/

base=$(bazel info bazel-testlogs)
for f in $(find ${base}  -name 'coverage.dat') ; do
  # TODO: you may want to add minimal coverage check here. Current coverage may be extracted from lcov --summary $f
  cp $f ${destdir}/$(echo $f| sed "s|${base}/||" | sed "s|/|_|g")
done

(
cd ${destdir}
find -name '*coverage.dat' -size 0 -delete
)

genhtml -o ${destdir} --ignore-errors source ${destdir}/*coverage.dat

echo "coverage report at file://${destdir}/index.html"