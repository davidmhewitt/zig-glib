pub usingnamespace @import("src/constants.zig");

pub const AppInfo = @import("src/AppInfo.zig").AppInfo;
pub const Application = @import("src/Application.zig").Application;
pub const Bytes = @import("src/Bytes.zig").Bytes;
pub const DesktopAppInfo = @import("src/DesktopAppInfo.zig").DesktopAppInfo;
pub const File = @import("src/File.zig").File;
pub const Icon = @import("src/Icon.zig").Icon;
pub const ListModel = @import("src/ListModel.zig").ListModel;
pub const ListStore = @import("src/ListStore.zig").ListStore;
pub const Object = @import("src/Object.zig").Object;
pub const Settings = @import("src/Settings.zig").Settings;

extern fn g_free(pointer: ?*const anyopaque) void;
pub const free = g_free;

fn refAllDeclsRecursive(comptime T: type) void {
    comptime {
        for (@import("std").meta.declarations(T)) |decl| {
            if (decl.is_pub) {
                switch (decl.data) {
                    .Type => |T2| refAllDeclsRecursive(T2),
                    else => _ = decl,
                }
            }
        }
    }
}

test {
    @setEvalBranchQuota(100000);
    refAllDeclsRecursive(@This());
}
