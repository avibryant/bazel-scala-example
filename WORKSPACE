workspace(name = "scala_example")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

rules_scala_version="26cf9b74fc46f1e9a970c97837447549ed7257b6" # update this as needed
RULES_SCALA_SHA = "b6e416d6b4b3299baffeba6eb7df84c655d0344be32e58ed7b9ad63218c2e240"

http_archive(
    name = "io_bazel_rules_scala",
    sha256 = RULES_SCALA_SHA,
    url = "https://github.com/bazelbuild/rules_scala/archive/%s.zip"%rules_scala_version,
    type = "zip",
    strip_prefix= "rules_scala-%s" % rules_scala_version
)

load("@io_bazel_rules_scala//scala:scala.bzl", "scala_repositories")
scala_repositories()

# register default scala toolchain
load("@io_bazel_rules_scala//scala:toolchains.bzl", "scala_register_toolchains")
scala_register_toolchains()

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

PROTOBUF_VERSION = "09745575a923640154bcf307fba8aedff47f240a"

PROTOBUF_VERSION_SHA256 = "416212e14481cff8fd4849b1c1c1200a7f34808a54377e22d7447efdf54ad758"

http_archive(
    name = "com_google_protobuf",
    sha256 = PROTOBUF_VERSION_SHA256,
    strip_prefix = "protobuf-%s" % PROTOBUF_VERSION,
    url = "https://github.com/protocolbuffers/protobuf/archive/%s.tar.gz" % PROTOBUF_VERSION,
)

# bazel-skylib 0.8.0 released 2019.03.20 (https://github.com/bazelbuild/bazel-skylib/releases/tag/0.8.0)
skylib_version = "0.8.0"

http_archive(
    name = "bazel_skylib",
    sha256 = "2ef429f5d7ce7111263289644d233707dba35e39696377ebab8b0bc701f7818e",
    type = "tar.gz",
    url = "https://github.com/bazelbuild/bazel-skylib/releases/download/{}/bazel-skylib.{}.tar.gz".format(skylib_version, skylib_version),
)

RULES_JVM_EXTERNAL_TAG = "3.1"
RULES_JVM_EXTERNAL_SHA = "e246373de2353f3d34d35814947aa8b7d0dd1a58c2f7a6c41cfeaff3007c2d14"

http_archive(
    name = "rules_jvm_external",
    strip_prefix = "rules_jvm_external-%s" % RULES_JVM_EXTERNAL_TAG,
    sha256 = RULES_JVM_EXTERNAL_SHA,
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/%s.zip" % RULES_JVM_EXTERNAL_TAG,
)

load("@rules_jvm_external//:defs.bzl", "maven_install")

maven_install(
    artifacts = [
        "junit:junit:4.12",
        "org.scalatest:scalatest_2.11:3.0.5",
        "com.twitter:algebird-core_2.11:0.12.1",
    ],
    repositories = [
        "https://jcenter.bintray.com/",
        "https://repo1.maven.org/maven2",
    ],
    maven_install_json = "//:maven_install.json",
    # Some useful options that you may want to try:
    fetch_sources = True,
    resolve_timeout = 1200,
    # If you have a lot of dependencies, then you may want to try caching:
    use_unsafe_shared_cache = True,
)

load("@maven//:defs.bzl", "pinned_maven_install")
pinned_maven_install()
