const GLib = @import("../glib.zig");

pub const AppInfo = extern struct {
    const Self = @This();

    parent_instance: *anyopaque,

    extern fn g_app_info_get_icon(self: *Self) ?*GLib.Icon;
    pub const getIcon = g_app_info_get_icon;
};
