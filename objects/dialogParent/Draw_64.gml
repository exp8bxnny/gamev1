if (showing_dialog == true) {
	//show_debug_message("gui drawing");
	var text_x = 120;
	var text_y = display_get_gui_height() - 155;
	var border = 5;
	var padding = 16;
	var height = 768;
	
	height += padding * 2;
	//text_x = sprite_get_width(current_dialog.sprite) + (padding * 2);
	
	//draw_set_alpha(alpha);
	var rect_x1 = 100;
	var rect_y1 = display_get_gui_height() - 170;
	var rect_x2 = display_get_gui_width() - 100;
	var rect_y2 = display_get_gui_height() - 20;
	
	draw_set_color(c_black);
	draw_rectangle(rect_x1, rect_y1, rect_x2, rect_y2, false);

	//draw_set_color(c_white);
	//draw_rectangle(border, border, display_get_gui_width() - border, height - border, false);	
	
	//draw_set_color(c_black);
	//draw_rectangle((border * 2), (border * 2), display_get_gui_width() - (border * 2), height - (border * 2), false);
	
	draw_set_color(c_white);
	//draw_text_ext_transformed(x, y, "Dynamically Scaled Text", 0.75, 0)
	draw_set_font(dogica);
	draw_text_ext_transformed(text_x, text_y, current_dialog.message, 50, display_get_gui_width(), 0.8, 0.8, 0);
	
	//alpha = lerp(alpha, 1, 0.06);
}
