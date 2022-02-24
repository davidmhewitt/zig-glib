const c = @import("c.zig");

pub const Object = extern struct {
    const Self = @This();

    parent_instance: *anyopaque,

    extern fn g_object_new(object_type: c.GType, first_property_name: [*c]const u8, ...) *Self;
    pub const new = g_object_new;

    extern fn g_object_unref(self: *Self) void;
    pub const unref = g_object_unref;

    extern fn g_object_notify(self: *Self, property_name: [*c]const u8) void;
    pub const notify = g_object_notify;
};
