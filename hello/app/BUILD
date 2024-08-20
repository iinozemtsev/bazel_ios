load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
load(
    "@rules_xcodeproj//xcodeproj:defs.bzl",
    "top_level_target",
    "xcodeproj",
)

swift_library(
    name = "hello.library",
    srcs = glob(["**/*.swift"]),
    module_name = "hello",
    deps = ['//hello/dart'],
)

ios_application(
    name = "app",
    app_icons = glob(["Assets/Assets.xcassets/AppIcon.appiconset/**"]),
    bundle_id = "com.google.Hello",
    # bundle_name = app_info.bundle_name,
    # entitlements = "ios app.entitlements",
    # executable_name = app_info.executable_name,
    families = [
        "iphone",
        "ipad",
    ],
    infoplists = [":Info.plist"],
    minimum_os_version = "16.0",
    resources = glob(
        [
            "Assets/Assets.xcassets/**",
        ],
        exclude = ["Assets/Assets.xcassets/AppIcon.appiconset/**"],
    ),
    # Add localizable assets here.
    # strings = glob(["*.lproj/Localizable.strings"]),
    # version = ":Version",
    # visibility = [
    #     "//:__subpackages__",
    #     "@rules_xcodeproj//xcodeproj:generated",
    # ],
    deps = [
        ":hello.library",
    ],
    visibility = [
        "//:__subpackages__",
        "@rules_xcodeproj//xcodeproj:generated",
    ],
    frameworks = ['//hello/dart:Dart'],
)

xcodeproj(
    name = "xcodeproj",
    project_name = "App",
    top_level_targets = [
        top_level_target(
            ":app",
            target_environments = ["simulator"],
        ),
    ],
)
