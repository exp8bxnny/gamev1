event_inherited();

if(keyboard_check_pressed(ord("Z"))){
	if(text_index < array_length(displayText)){
		dialog.add(displayText[text_index]);
		text_index++;
		sprite_index = spriteList[spriteIndex];
		spriteIndex++;

	} else {
		show_text = false;
		obj_player.x = 5016;
		obj_player.y = 2565;
		room_goto(rm_main);
		//instance_destroy();
	}
}