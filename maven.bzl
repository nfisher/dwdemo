load("@rules_jvm_external//:defs.bzl", "maven_install")
load("@rules_jvm_external//:specs.bzl", "maven")

def maven_deps():
    native.maven_server(
        name = "default",
        url = "http://localhost:8081/repository/instana-private/"
    )

    native.maven_jar(
        name = "jbx_dwdemo_dwdemo",
        artifact = "jbx.dwdemo:dwdemo:1.0-SNAPSHOT",
        server = "default",
    )

