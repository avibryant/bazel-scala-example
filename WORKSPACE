git_repository(
    name = "bazel",
    remote = "https://github.com/bazelbuild/bazel.git",
    commit = "aaff855491f0a6679308c5a6eac43b3a93135bfc")

new_http_archive(
    name = "scala",
    strip_prefix = "scala-2.11.7",
    sha256 = "ffe4196f13ee98a66cf54baffb0940d29432b2bd820bd0781a8316eec22926d0",
    url = "http://downloads.typesafe.com/scala/2.11.7/scala-2.11.7.tgz",
    build_file = "tools/build_rules/scala.BUILD",
)
