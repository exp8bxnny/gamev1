event_inherited();

if(show_text){
	if(keyboard_check_pressed(ord("Z"))){
		if(text_index < array_length(displayText)){
			dialog.add(displayText[text_index]);
			text_index++;
		} else {
			show_text = false;
			room_goto(rm_s4_e3battle);
		}
	}
}