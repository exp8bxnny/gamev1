// just checks if theres no dialogue left to show
if (showing_dialog == false) {
	if (dialog.count() <= 0) {
		//instance_destroy();
		//showing_dialog = false;
		return;
	}
	
	current_dialog = dialog.pop();
	showing_dialog = true;
}
else {
	
	if (keyboard_check_pressed(ord("Z"))) {
		showing_dialog = false;
//		alpha = 0;
	}
}
/*
	if (keyboard_check_pressed(ord("Z"))) {
		if (dialog.count() > 0) {
			current_dialog = dialog.pop();
			showing_dialog = true;
		} else {
			showing_dialog = false;
		}
}
*/