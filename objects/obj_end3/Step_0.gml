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
		room_goto(rm_theEnd);
	}
}