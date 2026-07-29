// Inherit the parent event
event_inherited();

if(show_text){
	if (!hasTalked) {
	show_debug_message("yes talking exit wow");
	dialog.add("(This exit is locked.)");
	dialog.add("(Maybe try exploring later..?)");
	hasTalked = true;
	}
}

/*
if((place_meeting(x, y, obj_player))) {
	show_debug_message("exit player meeting");
	if (!hasTalked) {
		show_debug_message("yes talking exit wow");
		dialog.add("(This exit is locked.)");
		dialog.add("(Maybe try exploring later..?)");
		hasTalked = true;
	}
}





/*if(hasTalked){
	dialog.count() = 0;
}*/