# zig-glib

Thin Zig wrapper for the [GLib](https://gitlab.gnome.org/GNOME/glib) library.

🚧 Very much a work in progress... 🚧

## Naming convention

Type names and method names of the original C library were changed to follow the [Zig Style Guide](https://ziglang.org/documentation/0.9.1/#Names). For example, a method like `g_list_model_get_item(list, position)` in GLib C becomes a method belonging to the `ListModel` struct and can be called like `list_model.getItem(position)` in zig-glib.

## Status

This is currently very incomplete. Only a small number of types have been wrapped, and those that have aren't fully wrapped. I have only been binding the types and methods I need in my projects for now.

PRs are very welcome to add more bindings.

## Usage

Add the following to your `build.zig`:

```
const glib = std.build.Pkg{ .name = "glib", .path = .{ .path = "deps/zig-glib/glib.zig" } };
exe.addPackage(glib);
exe.linkSystemLibrary("glib-2.0");
exe.linkSystemLibrary("gobject-2.0"); // If needed
exe.linkSystemLibrary("gio-2.0"); // If needed
```