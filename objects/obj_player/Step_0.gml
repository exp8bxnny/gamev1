var move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
var move_y = keyboard_check(vk_down) - keyboard_check(vk_up);

// Prevent diagonal movement.
// Horizontal movement gets priority when both axes are pressed.
if (move_x != 0)
{
    move_y = 0;
}

// Horizontal collision
if (!place_meeting(x + move_x, y, wall_tilemap))
{
    x += move_x;
}

// Vertical collision
if (!place_meeting(x, y + move_y, wall_tilemap))
{
    y += move_y;
}

// Exit Activated
if((place_meeting(x, y, obj_sign)) && complete){
	room_goto(Room2);
}