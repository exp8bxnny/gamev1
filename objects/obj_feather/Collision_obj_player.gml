if(!global.featherf1Collected){
	show_text = true;
}

if(global.featherf1Collected && global.textf1Done){
	show_debug_message("both check done");
	room_goto(rm_s2_f1);
}