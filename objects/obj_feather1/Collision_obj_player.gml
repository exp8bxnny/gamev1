if(keyboard_check_pressed(ord("Z"))){
	global.featherf1Collected = true;
	global.textf1Done = true;
}

if(!global.featherf1Collected){
	//show_text = true;
	show_debug_message("player feather coll, text");
}

if(global.featherf1Collected && global.textf1Done){
	show_debug_message("both check done");
	room_goto(rm_s2_f1);
}