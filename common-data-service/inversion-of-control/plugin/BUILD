load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "net_library")

net_library(
    name = "plugin",
    srcs = [
        "IPluginScope.cs",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//common-data-service/inversion-of-control/core",
        "@microsoft.crmsdk.coreassemblies//:net462_net",
    ],
)
