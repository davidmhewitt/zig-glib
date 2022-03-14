pub const Error = extern struct {
    const Self = @This();

    parent_instance: *anyopaque,

    extern fn g_error_free(self: *Self) void;
    pub const free = g_error_free;
};
