//
// Functions! We've already created lots of functions called 'main()'. Now let's
// do something different:
//
//     fn foo(n: u8) u8 {
//         return n + 1;
//     }
//
// The foo() function above takes a number 'n' and returns a number that is
// larger by one.
//
// Note the input parameter 'n' and return types are both u8.
//
const std = @import("std");

pub fn main() void {
    // The new function deepThought() should return the number 42. See below.
    const answer: u8 = deepThought();

    std.debug.print("Answer to the Ultimate Question: {}\n", .{answer});
}

// Please define the deepThought() function below.
//
// We're just missing a couple things. One thing we're NOT missing is the
// keyword "pub", which is not needed here. Can you guess why?
//
// deepThought does not need to be accessible to code outside of this file,
// so we don't need to declare it as pub. main does -- it's the entry point
// into this program, so we always declare it pub.
fn deepThought() u8 {
    return 42; // Number courtesy Douglas Adams
}
