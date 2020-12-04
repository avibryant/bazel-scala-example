load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def jdk_repositories():
    http_archive(
        name = "jdk8_linux",
        build_file = "@local_jdk//:BUILD.bazel",
        sha256 = "2b59b5282ff32bce7abba8ad6b9fde34c15a98f949ad8ae43e789bbd78fc8862",
        strip_prefix = "jdk8u252-b09",
        urls = [
            "https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u252-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u252b09.tar.gz",
        ],
    )

    http_archive(
        name = "jdk8_macos",
        build_file = "@local_jdk//:BUILD.bazel",
        sha256 = "3c41691278831d367e44482e8d495e50c08b4e61fee041661edcfac0585e3a2a",
        strip_prefix = "jdk8u252-b09",
        urls = [
            "https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u252-b09.1/OpenJDK8U-jdk_x64_mac_hotspot_8u252b09.tar.gz",
        ],
    )
