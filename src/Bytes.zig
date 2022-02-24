pub const Bytes = extern struct {
    const Self = @This();

    parent_instance: *anyopaque,

    extern fn g_bytes_new_static(data: *const anyopaque, size: usize) ?*Self;
    pub fn newStatic(data: []const u8) ?*Self {
        return g_bytes_new_static(data.ptr, data.len);
    }

    extern fn g_bytes_unref(self: *Self) void;
    pub const unref = g_bytes_unref;
};
