load("@io_bazel_rules_scala//scala:advanced_usage/scala.bzl", "make_scala_binary", "make_scala_junit_test", "make_scala_library", "make_scala_macro_library", "make_scala_test")
load("@io_bazel_rules_scala//scala/scalafmt:phase_scalafmt_ext.bzl", "ext_scalafmt")

# Define scala rules with Scalafmt with the same name as IntelliJ plugin expects for scala rules.
# More info at: https://github.com/bazelbuild/rules_scala/blob/master/docs/phase_scalafmt.md#intellij-plugin-support
scala_binary = make_scala_binary(ext_scalafmt)
scala_library = make_scala_library(ext_scalafmt)
scala_macro_library = make_scala_macro_library(ext_scalafmt)
scala_test = make_scala_test(ext_scalafmt)
