event_inherited();

if(keyboard_check_pressed(ord("Z"))){
	if(text_index < array_length(displayText)){
		dialog.add(displayText[text_index]);
		text_index++;
	} else {
		show_text = false;
		obj_player.x = 4128;
		obj_player.y = 4352;
		room_goto(rm_main);
	}
}

/*if(keyboard_check_pressed(ord("Z"))){
	show_debug_message("z press detect");
	if(text_index < array_length(displayText) - 1){
		text_index++;
		show_debug_message("text_index up");
	} else {
		show_text = false;
		show_debug_message("else show_text = false");
		room_goto(rm_s2);
		
	}
}*/