if(global.check1 && global.check2 && global.check3 && global.check4 
   && global.check5 && global.check6 && global.check7 && global.check8){
	global.slidingDone = true;
	show_debug_message("sliding puzzle done");	
	obj_player.x = 1783;
	obj_player.y = 3338;
	room_goto(rm_s2_acc);
}