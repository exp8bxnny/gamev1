// Inherit the parent event
event_inherited();

if ((place_meeting(x, y, obj_player))) {
	if (!hasTalked) {
		//show_debug_message("yes talking sign wow");
		dialog.add("(An old, wooden sign. The faded words spell out 'Mt. Shari'.)");
		dialog.add("(Trying to brush off the dust gave you a splinter. Ow.)");
		hasTalked = true;
	}
}