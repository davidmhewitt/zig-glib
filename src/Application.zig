pub const Application = extern struct {
    const Self = @This();

    parent_instance: *anyopaque,

    extern fn g_application_quit(self: *Self) void;
    pub const quit = g_application_quit;
};
