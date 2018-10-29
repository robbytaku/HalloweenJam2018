var i = 0;
draw_set_font(font_main);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

repeat(buttons) {
	
	xx = menu_x;
	yy = menu_y + (button_h + button_padding) * i + 256 * (1-unfold[i]);
	dark = make_color_rgb(30, 23, 38);
	draw_set_color(dark);
	draw_rectangle(xx, yy, xx + button_w, yy + button_h, false);
	
	draw_set_color(c_dkgray);
	
	if (menu_index == i) draw_set_color(c_purple);
	
	draw_text(xx + button_w/2, yy + button_h/2, button[i]);
	
	i++;
	
}
