if(keyboard_check_pressed(ord("Z"))){
	talkZCount++;
}

if(global.featherf1Collected && global.cat_defeated){
	room_goto(rm_s3);
} /* else { // REPLACE W DIALOGUE SYSTEM!!!!!!!
	dialog.add("not unlocked yet...");
	hasTalked = true;
}.*/
