const std = @import("std");
pub fn main() !void {
    const stdout = std.io.getStdOut().writer();

    const arr = [_]i32{ 1, 2, 3, 4, 5 };
    const len = arr.len;
    try stdout.print("hi \n", .{});
    try stdout.print("lol {}\n", .{len});
    var i: i32 = 2;
    var sum: i32 = 0;
    while (i < 1000000500) : (i *= 2) {
        try stdout.print("{} \n", .{i});
        sum += i;
    }
    try stdout.print("sum is {}", .{sum});
}

const expect = std.testing.expect;

test "if statement" {
    const b = false;
    var x: u16 = 0;
    if (b) {
        x += 1;
    } else {
        x += 2;
    }
    try expect(x == 2);
}
