// Inherit the parent event
event_inherited();

if ((place_meeting(x, y, obj_player))) {
	if (!hasTalked) {
		//show_debug_message("yes talking sign wow");
		dialog.add("(This exit is locked.)");
		dialog.add("(Maybe try exploring later..?)");
		hasTalked = true;
	}
}

if(hasTalked && talkZCount > 2){
	room_goto(rm_s2);
}