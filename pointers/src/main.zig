const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    var x: i32 = 3;
    double(&x);
    try stdout.print("x is {}", .{x});
}
pub fn double(num: *i32) void {
    num.* *= 2;
}
