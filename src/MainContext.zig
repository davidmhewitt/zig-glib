pub const MainContext = extern struct {
    const Self = @This();

    parent_instance: *anyopaque,

    extern fn g_main_context_default() ?*Self;
    pub const default = g_main_context_default;
};
