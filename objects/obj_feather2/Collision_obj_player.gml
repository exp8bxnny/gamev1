if(!global.featherf2Collected){
	show_text = true;
	show_debug_message("player feather coll, text");
}

if(global.featherf2Collected && global.textf2Done){
	show_debug_message("both check done");
	room_goto(rm_s3_maze);
}