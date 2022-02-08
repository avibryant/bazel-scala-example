load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def jdk_repositories():
    http_archive(
        name = "jdk11_linux",
        build_file = "@local_jdk//:BUILD.bazel",
        sha256 = "e388fd7f3f2503856d0b04fde6e151cbaa91a1df3bcebf1deddfc3729d677ca3",
        strip_prefix = "jdk-11.0.9.1+1",
        urls = [
            "https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.9.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.9.1_1.tar.gz",
        ],
    )

    http_archive(
        name = "jdk11_macos",
        build_file = "@local_jdk//:BUILD.bazel",
        sha256 = "96bc469f9b02a3b84382a0685b0bd7935e1ad1bd82a0aab9befb5b42a17cbd77",
        strip_prefix = "jdk-11.0.9.1+1",
        urls = [
            "https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.9.1%2B1/OpenJDK11U-jdk_x64_mac_hotspot_11.0.9.1_1.tar.gz",
        ],
    )
