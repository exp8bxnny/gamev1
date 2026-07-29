if(keyboard_check_pressed(ord("Z"))){
	show_debug_message("z press detect");
	if(text_index < array_length(displayText) - 1){
		text_index++;
		show_debug_message("text_index up");
	} else {
		show_text = false;
		show_debug_message("else show_text = false");
		room_goto(rm_s2);
		
	}
}