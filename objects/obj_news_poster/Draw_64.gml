if(show_text){
	//draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_set_color(c_white);
	draw_rectangle(20, 20, 300, 300, false);

	draw_set_font(font_arial20);
	draw_set_color(c_black);
	draw_set_halign(fa_left);
	draw_text(50, 200, displayText[text_index]);
}