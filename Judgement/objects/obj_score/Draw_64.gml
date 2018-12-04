draw_set_color(c_red);
draw_set_font(font_score);
if (number == 0)
{
	draw_set_color(c_white);
	if (instance_exists(obj_nextroomarrow))
	
	{
	obj_nextroomarrow.visible = true;
	}
}

draw_text(900,40,number);

