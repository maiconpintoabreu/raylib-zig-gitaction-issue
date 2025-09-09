const std = @import("std");
const rl = @import("raylib");
const buildin = @import("builtin");

pub fn main() anyerror!void {
    // Initialization
    //--------------------------------------------------------------------------------------
    rl.setTraceLogLevel(if (buildin.mode == .Debug) .all else .err);
    const screenWidth = 800;
    const screenHeight = 450;

    rl.initWindow(screenWidth, screenHeight, "raylib-zig [core] example - basic window");
    defer rl.closeWindow(); // Close window and OpenGL context
    //--------------------------------------------------------------------------------------

    // Main game loop
    std.os.emscripten.emscripten_set_main_loop(updateFrame, 0, 1);
}
export fn updateFrame() void {
    // Update
    //----------------------------------------------------------------------------------
    // TODO: Update your variables here
    //----------------------------------------------------------------------------------

    // Draw
    //----------------------------------------------------------------------------------
    rl.beginDrawing();
    defer rl.endDrawing();

    rl.clearBackground(.white);

    rl.drawText("Congrats! You created your first window!", 190, 200, 20, .light_gray);
    //----------------------------------------------------------------------------------
}
