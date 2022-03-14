const std = @import("std");
const Builder = std.build.Builder;

pub fn build(b: *Builder) void {
    const target = b.standardTargetOptions(.{});
    const mode = b.standardReleaseOptions();

    const glib_test = b.addTest("glib.zig");
    glib_test.setTarget(target);
    glib_test.setBuildMode(mode);

    glib_test.linkLibC();

    glib_test.linkSystemLibrary("gio-2.0");

    const test_step = b.step("test", "Run the tests");
    test_step.dependOn(&glib_test.step);
}
