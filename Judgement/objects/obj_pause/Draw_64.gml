if (pause) {
	draw_set_color(c_black);
	draw_set_alpha(0.60);
	draw_rectangle(view_xport[0],view_yport[0],view_wport[0], view_hport[0],0);
	draw_set_halign(fa_center);
	draw_set_font(font_main);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text((view_wport[0])/2, (view_hport[0])/2, "Paused");
}

if (keyboard_check(ord("Q"))) game_end()