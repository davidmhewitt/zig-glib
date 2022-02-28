const c = @import("c.zig");

pub const ApplicationFlags = struct {
    pub const None = c.G_APPLICATION_FLAGS_NONE;
    pub const IsService = c.G_APPLICATION_IS_SERVICE;
    pub const IsLauncher = c.G_APPLICATION_IS_LAUNCHER;
    pub const HandlesOpen = c.G_APPLICATION_HANDLES_OPEN;
    pub const HandlesCommandLine = c.G_APPLICATION_HANDLES_COMMAND_LINE;
    pub const SendEnvironment = c.G_APPLICATION_SEND_ENVIRONMENT;
    pub const NonUnique = c.G_APPLICATION_NON_UNIQUE;
    pub const CanOverrideAppId = c.G_APPLICATION_CAN_OVERRIDE_APP_ID;
    pub const AllowReplacement = c.G_APPLICATION_ALLOW_REPLACEMENT;
    pub const Replace = c.G_APPLICATION_REPLACE;
};
