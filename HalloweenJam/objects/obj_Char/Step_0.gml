if (keyboard_check(ord("D"))) x = x + 15;
if (keyboard_check(ord("A"))) x = x - 15;
if (keyboard_check(ord("W"))) y = y - 15;
if (keyboard_check(ord("S"))) y = y + 15;

image_angle = point_direction(x,y,mouse_x,mouse_y);

if (mouse_check_button(mb_left)) && (cooldown < 1)
{
	instance_create_layer(x,y,"bullet_layer",obj_bullet)
	cooldown = 15;
}

cooldown = cooldown - 1;

switch((((direction + 22.5) mod 360) + 360) mod 360) div 90 {
	case 0: sprite_index = spr_left; break;
	case 1: sprite_index = spr_down; break;
	case 2: sprite_index = spr_right; break;
	case 3: sprite_index = spr_up; break;
	}