if (keyboard_check(ord("D"))) x = x + 15;
if (keyboard_check(ord("A"))) x = x - 15;
if (keyboard_check(ord("W"))) y = y - 15;
if (keyboard_check(ord("S"))) y = y = 15;

image_angle = point_direction(x,y,mouse_x,mouse_y);

if (mouse_check_button(mb_left)) && (cooldown < 1)
{
	instance_create_layer(x,y,"bullet_layer",obj_bullet)
	cooldown = 15;
}

cooldown = cooldown - 1;
