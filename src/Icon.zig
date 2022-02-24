pub const Icon = extern struct {
    const Self = @This();

    parent_instance: *anyopaque,

    extern fn g_object_ref(self: *Self) *Self;
    pub const ref = g_object_ref;

    extern fn g_object_unref(self: *Self) void;
    pub const unref = g_object_unref;
};
