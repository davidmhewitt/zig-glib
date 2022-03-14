pub const Settings = extern struct {
    const Self = @This();

    parent_instance: *anyopaque,

    extern fn g_settings_new(schema_id: [*c]const u8) ?*Self;
    pub const new = g_settings_new;

    extern fn g_settings_get_int(self: *Self, key: [*c]const u8) i32;
    pub const getInt = g_settings_get_int;

    extern fn g_settings_get_string(self: *Self, key: [*c]const u8) [*c]const u8;
    /// Caller owns returned memory, must be freed with GLib.free
    pub const getString = g_settings_get_string;

    extern fn g_object_unref(self: *Self) void;
    pub const unref = g_object_unref;
};
