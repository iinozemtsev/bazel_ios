load("@build_bazel_rules_apple//apple:ios.bzl", "ios_framework", 'ios_static_framework')

package(default_visibility = ['//hello:__subpackages__'])

objc_library(
    name = 'dart',
    hdrs = ['Magic.h'],
    srcs = ['Magic.cpp'],
    module_name = 'Dart',
    alwayslink = True,
)

ios_framework(
    name = 'Dart',
    minimum_os_version = "16.0",
    hdrs = ['Magic.h', 'Dart.h'],
    bundle_id = 'dev.dart.Dart',
    families = ['iphone'],
    infoplists= ['Info.plist'],
    deps = [':dart'],
)

ios_static_framework(
    name = 'Dart_static',
    minimum_os_version = "16.0",
    hdrs = ['Magic.h'],
    bundle_name = 'Dart',
    families = ['iphone'],
    resources = [':Info.plist'],
    deps = [':dart'],
)
