load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def repositories():
    http_archive(
        name = "com_google_protobuf",
        strip_prefix = "protobuf-3.8.0",
        sha256 = "03d2e5ef101aee4c2f6ddcf145d2a04926b9c19e7086944df3842b1b8502b783",
        urls = [
            "https://github.com/protocolbuffers/protobuf/archive/v3.8.0.tar.gz",
        ],
    )

    http_archive(
        name = "com_google_protobuf_java",
        strip_prefix = "protobuf-3.8.0",
        sha256 = "03d2e5ef101aee4c2f6ddcf145d2a04926b9c19e7086944df3842b1b8502b783",
        urls = [
            "https://github.com/protocolbuffers/protobuf/archive/v3.8.0.tar.gz",
        ],
    )

    http_archive(
        name = "bazel_skylib",
        sha256 = "2ef429f5d7ce7111263289644d233707dba35e39696377ebab8b0bc701f7818e",
        urls = [
            "https://github.com/bazelbuild/bazel-skylib/releases/download/0.8.0/bazel-skylib.0.8.0.tar.gz",
        ],
    )

    http_archive(
        name = "rules_jvm_external",
        strip_prefix = "rules_jvm_external-2.2",
        sha256 = "f1203ce04e232ab6fdd81897cf0ff76f2c04c0741424d192f28e65ae752ce2d6",
        urls = [
            "https://github.com/bazelbuild/rules_jvm_external/archive/2.2.zip",
        ],
    )

