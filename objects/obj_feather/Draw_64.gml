if(show_text){
	//draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_set_color(c_white);
	draw_rectangle(70, 300, 910, 520, false);
	draw_set_font(font_arial20);
	draw_set_color(c_black);
	draw_set_halign(fa_left);
	draw_text(90, 350, "feather!");

	if(keyboard_check_pressed(ord("Z"))){
		global.featherf1Collected = true;
		global.textf1Done = true;
	}
}