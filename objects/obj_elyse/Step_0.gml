if(alarm[0] == -1){
	alarm[0] = 0.5 * game_get_speed(gamespeed_fps);
}

x_diff = abs(x - obj_player.x);
y_diff = abs(y - obj_player.y);

if(x_diff < 10 && y_diff < 10){
	elyseDetected = true;
}