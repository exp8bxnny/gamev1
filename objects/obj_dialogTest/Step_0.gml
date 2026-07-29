// Inherit the parent event
event_inherited();

if (!(place_meeting(x, y, obj_player))) {
	show_debug_message("shh");
	hasTalked = false;
} else {
	if (!hasTalked) {
		//show_debug_message("yes talking sign wow");
		dialog.add("An old, wooden sign. The faded words spell out “mt. idk”.");
		dialog.add("yay");
		hasTalked = true;
	}
}

/*if(place_meeting(x, y, obj_player)){
	show_debug_message("step coll player sign");
}

if (!touching) {
	hasTalked = false;
}*/