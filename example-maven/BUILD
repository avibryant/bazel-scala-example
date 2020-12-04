scala_library(
    name = "example-maven",
    srcs = glob(["src/main/scala/**/*.scala"]),
    visibility = ["//visibility:public"],
    deps = [
        "@maven//:com_twitter_algebird_core_2_12",
        "@maven//:org_typelevel_algebra_2_12",
        "@maven//:org_typelevel_cats_kernel_2_12",
    ],
)

scala_test(
    name = "test",
    srcs = glob(["src/test/scala/**/*.scala"]),
    deps = ["example-maven"],
)
