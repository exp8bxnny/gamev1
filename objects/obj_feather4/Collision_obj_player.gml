if(global.statueDone){
	global.featherf4Collected = true;

	if(keyboard_check(ord("Z"))){
		room_goto(rm_s4_f4_sliding);
	}
}