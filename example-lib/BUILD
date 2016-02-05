scala_library(
    name = "example-lib",
    srcs = glob(["*.scala"]),
    visibility = ["//visibility:public"]
)

scala_test(
  name = "test",
  srcs = glob(["test/*.scala"]),
  deps = ["example-lib"]
)
