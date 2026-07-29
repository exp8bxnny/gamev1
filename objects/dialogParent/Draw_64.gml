if (showing_dialog == true) {
	var text_x = 220;
	var text_y = 588;
	var height = 32;
	var border = 5;
	var padding = 16;
	
	height = 768;
	
	
	height += padding * 2;
	//text_x = sprite_get_width(current_dialog.sprite) + (padding * 2);
	
	//draw_set_alpha(alpha);
	
	draw_set_color(c_black);
	draw_rectangle(200, 568, display_get_gui_width() - 200, height - 50, false);

	//draw_set_color(c_white);
	//draw_rectangle(border, border, display_get_gui_width() - border, height - border, false);	
	
	//draw_set_color(c_black);
	//draw_rectangle((border * 2), (border * 2), display_get_gui_width() - (border * 2), height - (border * 2), false);
	
	draw_set_color(c_white);
	draw_set_font(-1);
	draw_text_ext(text_x, text_y, current_dialog.message, 30, 950);
	
	//alpha = lerp(alpha, 1, 0.06);
}
