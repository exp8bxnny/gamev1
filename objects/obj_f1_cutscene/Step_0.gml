if(keyboard_check_pressed(ord("Z"))){
	if(text_index < array_length(displayText) - 1){
		text_index++;
		sprite_index = spriteList[spriteIndex];
		spriteIndex++;
	} else {
		show_text = false;
		room_goto(rm_s2);
		instance_destroy();
	}
}