workspace(name = "scala_example")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("//tools/jdk:jdks.bzl", "jdk_repositories")

jdk_repositories()

skylib_version = "1.0.3"

http_archive(
    name = "bazel_skylib",
    sha256 = "1c531376ac7e5a180e0237938a2536de0c54d93f5c278634818e0efc952dd56c",
    type = "tar.gz",
    url = "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/{}/bazel-skylib-{}.tar.gz".format(skylib_version, skylib_version),
)

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "rules_python",
    sha256 = "954aa89b491be4a083304a2cb838019c8b8c3720a7abb9c4cb81ac7a24230cea",
    url = "https://github.com/bazelbuild/rules_python/releases/download/0.4.0/rules_python-0.4.0.tar.gz",
)

rules_scala_version = "4ba3780fcba8d26980daff4639abc6f18517308b"

RULES_SCALA_SHA = "21f613c25685ec5fdd32f25d0c8ef272cf81636261dda72ce1e99d63c377f0d8"

http_archive(
    name = "io_bazel_rules_scala",
    sha256 = RULES_SCALA_SHA,
    strip_prefix = "rules_scala-%s" % rules_scala_version,
    type = "zip",
    url = "https://github.com/bazelbuild/rules_scala/archive/%s.zip" % rules_scala_version,
)

load("@io_bazel_rules_scala//:scala_config.bzl", "scala_config")

scala_config(scala_version = "2.13.6")

load("@io_bazel_rules_scala//scala:scala.bzl", "scala_repositories")

scala_repositories()

load("@io_bazel_rules_scala//scala:toolchains.bzl", "scala_register_toolchains")

scala_register_toolchains()

# optional: setup ScalaTest toolchain and dependencies
load("@io_bazel_rules_scala//testing:scalatest.bzl", "scalatest_repositories", "scalatest_toolchain")

scalatest_repositories()

scalatest_toolchain()

protobuf_version = "3.11.3"

protobuf_version_sha256 = "cf754718b0aa945b00550ed7962ddc167167bd922b842199eeb6505e6f344852"

http_archive(
    name = "com_google_protobuf",
    sha256 = protobuf_version_sha256,
    strip_prefix = "protobuf-%s" % protobuf_version,
    url = "https://github.com/protocolbuffers/protobuf/archive/v%s.tar.gz" % protobuf_version,
)

http_archive(
    name = "zlib",
    build_file = "@com_google_protobuf//:third_party/zlib.BUILD",
    sha256 = "c3e5e9fdd5004dcb542feda5ee4f0ff0744628baf8ed2dd5d66f8ca1197cb1a1",
    strip_prefix = "zlib-1.2.11",
    urls = [
        "https://mirror.bazel.build/zlib.net/zlib-1.2.11.tar.gz",
        "https://zlib.net/zlib-1.2.11.tar.gz",
    ],
)

RULES_JVM_EXTERNAL_TAG = "4.1"

RULES_JVM_EXTERNAL_SHA = "f36441aa876c4f6427bfb2d1f2d723b48e9d930b62662bf723ddfb8fc80f0140"

http_archive(
    name = "rules_jvm_external",
    sha256 = RULES_JVM_EXTERNAL_SHA,
    strip_prefix = "rules_jvm_external-%s" % RULES_JVM_EXTERNAL_TAG,
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/%s.zip" % RULES_JVM_EXTERNAL_TAG,
)

load("@rules_jvm_external//:defs.bzl", "maven_install")

SCALA_VERSION = "2.13"

maven_install(
    artifacts = [
        "junit:junit:4.12",
        "org.scalatest:scalatest_%s:3.0.8" % SCALA_VERSION,
        "com.twitter:algebird-core_%s:0.13.7" % SCALA_VERSION,
    ],
    # Some useful options that you may want to try:
    fetch_sources = True,
    maven_install_json = "//:maven_install.json",
    repositories = [
        "https://jcenter.bintray.com/",
        "https://repo.maven.apache.org/maven2",
    ],
    resolve_timeout = 1200,
    # If you have a lot of dependencies, then you may want to try caching:
    use_unsafe_shared_cache = True,
)

load("@maven//:defs.bzl", "pinned_maven_install")

pinned_maven_install()
