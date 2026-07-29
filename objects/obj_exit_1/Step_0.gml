// Inherit the parent event
event_inherited();

/*if (!(place_meeting(x, y, obj_playerINTRO))) {
	show_debug_message("shh");
	hasTalked = false;
} else {*/
if ((place_meeting(x, y, obj_playerINTRO))) {
	if (!hasTalked) {
		//show_debug_message("yes talking sign wow");
		dialog.add("(An old, wooden sign. The faded words spell out 'Mt. Shari'.)");
		dialog.add("(Trying to brush off the dust gave you a splinter. Ow.)");
		hasTalked = true;
	}
}

if(hasTalked && talkZCount > 2){
	room_goto(rm_s2);
}