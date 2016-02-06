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

######
## External dependencies
######

load("/external/scalding"
  , "apache_commons"
  , "cascading"
  , "chill"
  , "guava"
  , "hadoop"
  , "twitter"
)

apache_commons("cli", "1.3.1")
apache_commons("logging", "1.2")
apache_commons("collections", "3.2.2")
cascading("2.6.1")
guava("11.0.2")
hadoop("2.5.0")
twitter("scalding", ["core", "date", "args", "serialization"], "0.16.0-RC3")
twitter("bijection", ["core"], "0.9.1")
twitter("algebird", ["core"], "0.12.0")
chill("0.7.3")
