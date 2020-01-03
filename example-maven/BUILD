scala_library(
    name = "example-maven",
    srcs = glob(["src/main/scala/**/*.scala"]),
    deps = ["@maven//:com_twitter_algebird_core_2_11"],
    visibility = ["//visibility:public"]
)

scala_test(
  name = "test",
  srcs = glob(["src/test/scala/**/*.scala"]),
  deps = ["example-maven"]
)