SCALA_VERSION = "2_13"

scala_library(
    name = "example-maven",
    srcs = glob(["src/main/scala/**/*.scala"]),
    visibility = ["//visibility:public"],
    deps = [
        "@maven//:com_twitter_algebird_core_%s" % SCALA_VERSION,
        "@maven//:org_typelevel_algebra_%s" % SCALA_VERSION,
        "@maven//:org_typelevel_cats_kernel_%s" % SCALA_VERSION,
    ],
)

scala_test(
    name = "test",
    srcs = glob(["src/test/scala/**/*.scala"]),
    deps = ["example-maven"],
)
