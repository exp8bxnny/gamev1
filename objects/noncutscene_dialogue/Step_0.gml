// Inherit the parent event
event_inherited();



if ((place_meeting(x, y, obj_player)) && count == 0) {
	//show_debug_message("yes talking sign wow");
	dialog.add("Maybe these feathers could tell me more about my past...");
	count++;
	x = 3488;
	y = 4640;
	
}

if ((place_meeting(x, y, obj_player)) && count == 1) {
	//show_debug_message("yes talking sign wow");
	dialog.add("I guess if heaven's where I'm trying to get back to, I have to try to get as close to the sky as possible.");
	count++;
	x = 4000;
	y = 4384;
	
}

if ((place_meeting(x, y, obj_player)) && count == 2) {
	//show_debug_message("yes talking sign wow");
	dialog.add("(A cat with a collar reading 'Elyse' sits on the path up ahead.)");
	dialog.add("Huh, that's... Elyse? Strange.");
	count++;
	x = 4160;
	y = 4320;
	
}

	if ((place_meeting(x, y, obj_player)) && count == 3) {
		dialog.add("...Left behind to die.");
		dialog.add("I would hate me too.");
		count++;
		x = 5120;
		y = 2656;
		
	}
	if (((place_meeting(x, y, obj_player)) && count == 4)) {
		dialog.add("Huh? What's that?");
		count++;
		
	}