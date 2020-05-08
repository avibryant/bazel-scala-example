scala_library(
    name = "example-maven",
    srcs = glob(["src/main/scala/**/*.scala"]),
    visibility = ["//visibility:public"],
    deps = ["@maven//:com_twitter_algebird_core_2_11"],
)

scala_test(
    name = "test",
    srcs = glob(["src/test/scala/**/*.scala"]),
    deps = ["example-maven"],
)
