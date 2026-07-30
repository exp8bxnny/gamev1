event_inherited();

if(keyboard_check_pressed(ord("Z"))){
	if(text_index < array_length(displayText)){
		dialog.add(displayText[text_index]);
		text_index++;
		sprite_index = spriteList[spriteIndex];
		spriteIndex++;

	} else {
		show_text = false;
		obj_player.x = 5160;
		obj_player.y = 2595;
		room_goto(rm_s2_acc);
		//instance_destroy();
	}
}