workspace(name = "scala_example")

git_repository(
    name = "io_bazel_rules_scala",
    remote = "git://github.com/bazelbuild/rules_scala",
    commit = "5dbb873654aa8cd706aec802745c157da057ceb5"
)

load("@io_bazel_rules_scala//scala:scala.bzl", "scala_repositories")
scala_repositories()
