if(keyboard_check_pressed(ord("Z"))){
	global.featherf2Collected = true;
}

if(global.featherf2Collected){
	show_debug_message("both check done");
	obj_player.x = 640;
	obj_player.y = 8;
	room_goto(newrm_maze);
}