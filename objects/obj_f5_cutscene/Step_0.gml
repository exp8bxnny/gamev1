event_inherited();

if(alarm[0] == -1){
	alarm[0] = 0.5 * game_get_speed(gamespeed_fps);
}

if(keyboard_check_pressed(ord("Z"))){
	if(text_index < array_length(displayText)){
		dialog.add(displayText[text_index]);
		text_index++;
	} else {
		show_text = false;
		obj_player.x = 2850;
		obj_player.y = 4071;
		room_goto(rm_s2_acc);
		
		//instance_destroy();
	}

	global.featherf1Collected = true;
	global.textf1Done = true;
}