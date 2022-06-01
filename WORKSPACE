workspace(name = "scala_example")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

skylib_version = "1.3.0"

http_archive(
    name = "bazel_skylib",
    sha256 = "74d544d96f4a5bb630d465ca8bbcfe231e3594e5aae57e1edbf17a6eb3ca2506",
    type = "tar.gz",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/{}/bazel-skylib-{}.tar.gz".format(skylib_version, skylib_version),
        "https://github.com/bazelbuild/bazel-skylib/releases/download/{}/bazel-skylib-{}.tar.gz".format(skylib_version, skylib_version),
    ],
)

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "rules_python",
    sha256 = "a868059c8c6dd6ad45a205cca04084c652cfe1852e6df2d5aca036f6e5438380",
    strip_prefix = "rules_python-0.14.0",
    url = "https://github.com/bazelbuild/rules_python/archive/refs/tags/0.14.0.tar.gz",
)

rules_scala_version = "73f5d1a7da081c9f5160b9ed7ac745388af28e23"

RULES_SCALA_SHA = "ebc2b00d599a73e62743bee5e4b11e5e94f35692b869d49f31b04faec380c16c"

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

register_toolchains("//tools/jdk:my_scala_toolchain")

# optional: setup ScalaTest toolchain and dependencies
load("@io_bazel_rules_scala//testing:scalatest.bzl", "scalatest_repositories", "scalatest_toolchain")

scalatest_repositories()

scalatest_toolchain()

protobuf_version = "3.17.3"

protobuf_version_sha256 = "c6003e1d2e7fefa78a3039f19f383b4f3a61e81be8c19356f85b6461998ad3db"

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

RULES_JVM_EXTERNAL_TAG = "4.5"

RULES_JVM_EXTERNAL_SHA = "b17d7388feb9bfa7f2fa09031b32707df529f26c91ab9e5d909eb1676badd9a6"

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
        "org.scala-lang:scala-library:jar:2.13.8",
        "org.scala-lang:scala-reflect:jar:2.13.8",
        "org.scala-lang:scala-compiler:jar:2.13.8",
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

register_toolchains("//tools/jdk:java17_toolchain_definition")
