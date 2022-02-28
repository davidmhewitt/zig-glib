const GLib = @import("../glib.zig");

pub const ListModel = extern struct {
    const Self = @This();

    parent_instance: *anyopaque,

    extern fn g_list_model_get_item(list: *Self, position: u32) ?*GLib.Object;
    pub const getItem = g_list_model_get_item;
};
