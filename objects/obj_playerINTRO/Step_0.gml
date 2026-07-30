wall_tilemap = layer_tilemap_get_id("Walls");

var move_x = keyboard_check(vk_right) - keyboard_check(vk_left);

if(keyboard_check(vk_shift)){
	move_x *= 7;
}

// Horizontal collision
if(x <= 0){
	x++;
} else if (x >= 1360){
	room_goto(rm_s2_acc);
} else {
	x+=move_x;
}

// Sprite change for movement
if(move_x > 0){
	sprite_index = spr_playerRight;
} else if(move_x < 0){
	sprite_index = spr_playerLeft;
} else {
	sprite_index = spr_playerFront;
}