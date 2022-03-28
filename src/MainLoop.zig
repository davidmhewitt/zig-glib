const GLib = @import("../glib.zig");

pub const MainLoop = extern struct {
    const Self = @This();

    parent_instance: *anyopaque,

    extern fn g_main_loop_new(context: ?*GLib.MainContext, running: bool) ?*Self;
    pub const new = g_main_loop_new;

    extern fn g_main_loop_run(self: *Self) void;
    pub const run = g_main_loop_run;

    extern fn g_main_loop_quit(self: *Self) void;
    pub const quit = g_main_loop_quit;

    extern fn g_main_loop_unref(self: *Self) void;
    pub const unref = g_main_loop_unref;
};
