const std = @import("std");

pub fn main() !void {
    for (30..48) |i| {
        std.debug.print("\x1b[{};1m {} \x1b[0m", .{i, i});
        if (((i - 29) % 6) == 0) {
            std.debug.print("\n", .{});
        }
    }
}
