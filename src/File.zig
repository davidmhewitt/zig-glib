pub const File = extern struct {
    const Self = @This();

    parent_instance: *anyopaque,

    extern fn g_file_new_for_uri(uri: [*c]const u8) ?*Self;
    pub const newForUri = g_file_new_for_uri;

    extern fn g_file_get_path(self: *Self) [*c]const u8;
    /// Caller owns returned memory, must be freed with GLib.free
    pub const getPath = g_file_get_path;

    extern fn g_object_unref(self: *Self) void;
    pub const unref = g_object_unref;
};
