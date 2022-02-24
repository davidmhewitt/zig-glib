const GLib = @import("../glib.zig");

pub const DesktopAppInfo = extern struct {
    const Self = @This();

    parent_instance: *anyopaque,

    extern fn g_desktop_app_info_new(desktop_id: [*c]const u8) ?*Self;
    pub const new = g_desktop_app_info_new;

    extern fn g_object_unref(self: *Self) void;
    pub const unref = g_object_unref;

    pub fn asAppInfo(self: *Self) *GLib.AppInfo {
        return @ptrCast(*GLib.AppInfo, self);
    }
};
