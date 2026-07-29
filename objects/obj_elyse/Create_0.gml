alarm[0] = 0.5 * game_get_speed(gamespeed_fps);

elyseDetected = false;

x_diff = 20;
y_diff = 20;

if(global.cat_defeated){
	instance_destroy();
}