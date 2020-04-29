A minimal example of using bazel to build scala, with a library, binary, and tests.

```bash
bazel test example-lib:test
bazel run example-bin
```

Code coverage:

```bash
# Install lcov once for your local package manager:
sudo apt install lcov

# Run tests with coverage:
bazel coverage \
  --extra_toolchains="@io_bazel_rules_scala//scala:code_coverage_toolchain" \
  --combined_report=lcov \
  --coverage_report_generator="@bazel_tools//tools/test/CoverageOutputGenerator/java/com/google/devtools/coverageoutputgenerator:Main" \
  //...

# Analyse results with lcov:
lcov --list bazel-out/k8-fastbuild/testlogs/example-lib/test/coverage.dat
lcov --list bazel-out/k8-fastbuild/testlogs/example-maven/test/coverage.dat

# You can also use tools/coverage.sh to generate an HTML report (already includes running coverage):
tools/coverage.sh
```

Also includes an example of using https://github.com/bazelbuild/rules_jvm_external to use transitive maven dependencies.

```bash
bazel build example-maven
```

See the rules_jvm_external README for info on how to use the dependencies.

You may want to regenerate the maven-install.json after changing depedencies with:

```bash
bazel run @unpinned_maven//:pin
```