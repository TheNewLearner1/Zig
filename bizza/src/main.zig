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
        if (i == 64) break;
    }
    for (arr, 0..) |char, ind| {
        try stdout.print("value {} ", .{char});
        try stdout.print("index {} \n", .{ind});
    }
    try stdout.print("sum is {}\n", .{sum});
    const z = double(1);
    try stdout.print("z is {}\n", .{z});
    const loz: u64 = 1;
    try stdout.print("type {} \n", .{@TypeOf(loz)});
    var x: i32 = 1;

    while (x <= 100000000) : (x += 2) {
        try stdout.print("x is {} \n ", .{x});
    }

    const xoxox: i32 = fib(40);
    try stdout.print("fib {}\n", .{xoxox});
    try difer(i);
}
pub fn fib(n: i32) i32 {
    if (n == 1 or n == 0) {
        return n;
    }
    return fib(n - 1) + fib(n - 2);
}
pub fn difer(n: i32) !void {
    var no = n;
    {
        defer no += 12;
        try std.io.getStdOut().writer().print(" {} \n ", .{no});
    }
    try std.io.getStdOut().writer().print(" {} \n", .{no});
}
pub fn double(x: u32) u32 {
    return 2 * x;
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
