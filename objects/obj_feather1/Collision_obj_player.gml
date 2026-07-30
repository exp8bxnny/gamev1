if(keyboard_check_pressed(ord("Z"))){
	global.featherf1Collected = true;
}

if(global.featherf1Collected){
	show_debug_message("both check done");
	room_goto(rm_s2_f1);
}