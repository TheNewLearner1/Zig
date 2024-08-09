const std = @import("std");
const stdout = std.io.getStdOut().writer();
pub fn main() !void {
    const list1 = [_]u8{ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
    const list2 = list1[0..6];
    const value1 = summation(list1);
    const value2 = summation(list2);
    try stdout.print("value {} ", .{value1});
    try stdout.print("value {} ", .{value2});
}
pub fn summation(value: []u8) usize {
    var sum = 0;
    for (value) |v| sum += v;
    return sum;
}
