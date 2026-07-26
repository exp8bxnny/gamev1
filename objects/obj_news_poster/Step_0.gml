if(keyboard_check_pressed(ord("C"))){
	if(text_index < array_length(displayText) - 1){
		text_index++;
	} else {
		show_text = false;
		room_goto(rm_s2);
	}
}