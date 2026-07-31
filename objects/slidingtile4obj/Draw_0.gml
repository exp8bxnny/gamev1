/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 2BF5B999
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 69875535
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l69875535_0=($FF000000 >> 24);
draw_set_alpha(l69875535_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 2087E103
/// @DnDArgument : "x1" "x"
/// @DnDArgument : "y1" "y"
/// @DnDArgument : "x2" "x+sprite_width"
/// @DnDArgument : "y2" "y+sprite_width"
draw_rectangle(x, y, x+sprite_width, y+sprite_width, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 6D6CEA10
/// @DnDArgument : "x1" "x+1"
/// @DnDArgument : "y1" "y+1"
/// @DnDArgument : "x2" "x+sprite_width-1"
/// @DnDArgument : "y2" "y+sprite_width-1"
draw_rectangle(x+1, y+1, x+sprite_width-1, y+sprite_width-1, 1);