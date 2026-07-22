if(feather_text){
	show_debug_message("Collision detected, show_text = ");
	draw_set_halign(fa_center);
    draw_set_valign(fa_top);
	draw_set_color(c_white);
	draw_set_font(font_arial30);
	draw_text(display_get_gui_width()/2, 20, "feather!");
	draw_set_halign(fa_left);
}