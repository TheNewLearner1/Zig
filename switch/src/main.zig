const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    var y: i32 = 32;
    var x: i32 = 200;
    switch (x) {
        -1...1 => {
            x = -x;
        },
        10, 200 => {
            x = @divExact(x, 10);
        },
        else => {},
    }
    y = switch (y) {
        -1...1 => -y,
        10, 32 => y * 2,
        else => y,
    };
    try stdout.print("x is {}\n", .{x});
    try stdout.print("x is {}", .{y});
}
