const GLib = @import("../glib.zig");
const c = @import("c.zig");

pub const ListStore = extern struct {
    const Self = @This();

    parent_instance: *anyopaque,

    extern fn g_list_store_new(item_type: c.GType) ?*ListStore;
    pub const new = g_list_store_new;

    extern fn g_list_store_find(self: *Self, item: *GLib.Object, position: *u32) bool;
    pub const find = g_list_store_find;

    extern fn g_list_store_append(self: *Self, item: *GLib.Object) void;
    pub const append = g_list_store_append;

    extern fn g_list_store_remove(self: *Self, position: u32) void;
    pub const remove = g_list_store_remove;

    pub fn asListModel(self: *Self) *GLib.ListModel {
        return @ptrCast(*GLib.ListModel, self);
    }
};
