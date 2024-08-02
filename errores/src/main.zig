const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    const file_errors = error{
        OutOfMemory,
        FileNotFound,
        AccessDenied,
    };

    const allocation_error = error{OutOfMemory};
    const err: file_errors = allocation_error.OutOfMemory;

    try stdout.print("expection {} \n", .{err == file_errors.OutOfMemory});
}
