var move_x = (keyboard_check(vk_right) - keyboard_check(vk_left)) * move_speed;
var move_y = (keyboard_check(vk_down) - keyboard_check(vk_up)) * move_speed;

// Prevent diagonal movement.
// Horizontal movement gets priority when both axes are pressed.
if (move_x != 0)
{
    move_y = 0;
}

x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height-32);

// Horizontal collision
if (!place_meeting(x + move_x, y, wall_tilemap))
{
    x += move_x;
} else {
	move_x *= -1;
}

// Vertical collision
if (!place_meeting(x, y + move_y, wall_tilemap))
{
    y += move_y;
} else {
	move_y *= -1;
}

// Shift for speed up
if(keyboard_check(vk_shift)){
	move_speed = 10;
} else {
	move_speed = 2;
}

// Sprite change for movement
if(move_x > 0){
	sprite_index = spr_playerRight;
} else if(move_x < 0){
	sprite_index = spr_playerLeft;
} else if (move_y < 0){
	sprite_index = spr_playerBack;
} else if(move_y >= 0){
	sprite_index = spr_playerFront;
}