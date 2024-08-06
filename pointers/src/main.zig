const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    var x: i32 = 3;
    double(&x);
    try stdout.print("x is {}", .{x});
    //const _y: u8 = 1;
    //var z = &y; // makes z const u8  making it const pointer
    //z.* += 1;
}
pub fn double(num: *i32) void {
    num.* *= 2;
}
