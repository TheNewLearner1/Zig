const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    const directions = enum { east, south, west, north };
}
