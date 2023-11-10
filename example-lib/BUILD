scala_library(
    name = "example-lib",
    srcs = glob(["src/main/scala/**/*.scala"]),
    visibility = ["//visibility:public"],
)

scala_test(
    name = "test",
    srcs = glob(["src/test/scala/**/*.scala"]),
    deps = ["example-lib"],
)

java_library(
    name = "hello-world",
    srcs = ["src/main/java/mypackage/Greeter.java"],
)

java_test(
    name = "java_test",
    test_class = "mypackage.TestHello",
    srcs = [
        "src/test/java/mypackage/TestHello.java",
    ],
    deps = ["hello-world"],
)