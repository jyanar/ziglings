//
// Now let's create a function that takes a parameter. Here's an
// example that takes two parameters. As you can see, parameters
// are declared just like any other types ("name": "type"):
//
//     fn myFunction(number: u8, is_lucky: bool) void {
//         ...
//     }
//
const std = @import("std");

pub fn main() void {
    std.debug.print("Powers of two: {} {} {} {}\n", .{
        twoToThe(1),
        twoToThe(2),
        twoToThe(3),
        twoToThe(4),
    });
}

// Please give this function the correct input parameter(s).
// You'll need to figure out the parameter name and type that we're
// expecting. The output type has already been specified for you.
//
fn twoToThe(my_number: i32) u32 {
    //
    // I could just do a u32 ^, but we can also just coerce it to the appropriate
    // type via @intCast, which infers the appropriate return type during comptime.
    // Note that if my_number were negative, `@intCast` will panic at runtime (provided
    // we're compiling in debug or ReleaseSafe).
    //
    return std.math.pow(u32, 2, @intCast(my_number));
    // std.math.pow(type, a, b) takes a numeric type and two
    // numbers of that type (or that can coerce to that type) and
    // returns "a to the power of b" as that same numeric type.
}
