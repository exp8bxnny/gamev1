event_inherited();

if(keyboard_check_pressed(ord("Z"))){
	if(text_index < array_length(displayText)){
		dialog.add(displayText[text_index]);
		text_index++;
		sprite_index = spriteList[spriteIndex];
		spriteIndex++;

	} else {
		show_text = false;
		obj_player.x = 3280;
		obj_player.y = 5100;
		room_goto(rm_s2_acc);
		
		//instance_destroy();
	}

	global.featherf1Collected = true;
	global.textf1Done = true;
}