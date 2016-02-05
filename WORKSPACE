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

http_file(
    name = "scalatest",
    url = "https://oss.sonatype.org/content/groups/public/org/scalatest/scalatest_2.11/2.2.6/scalatest_2.11-2.2.6.jar",
    sha256 = "f198967436a5e7a69cfd182902adcfbcb9f2e41b349e1a5c8881a2407f615962",
)
