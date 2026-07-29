// Inherit the parent event
event_inherited();

if (!(place_meeting(x, y, obj_player))) {
	touching = false;
}

if (!touching) {
	hasTalked = false;
}