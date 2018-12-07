draw_set_color(c_black);
draw_set_alpha(0.60);
draw_rectangle(view_xport[0],view_yport[0],view_wport[0], view_hport[0],0);
draw_set_halign(fa_center);
draw_set_font(font_main);
draw_set_color(c_white);
draw_set_alpha(1);
draw_text_transformed((view_wport[0])/2, (view_hport[0]- 64)/2, "YOU DIED", 1, 1, image_angle);
draw_text_transformed((view_wport[0])/2, (view_hport[0]+ 48)/2, "PRESS 'R' TO RESTART", 1, 1, image_angle)
	
if (keyboard_check(ord("R")))  
{
	audio_stop_all();
	if room != room_basement audio_play_sound(snd_music, 1, 1);
	room_restart();
}


