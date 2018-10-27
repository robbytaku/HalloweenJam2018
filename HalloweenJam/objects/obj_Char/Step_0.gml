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

switch(round(point_direction(x,y,mouse_x,mouse_y)/45)){
    case 8:
        //Facing right
		sprite_index = spr_right
        break;
    case 1:
        //Facing upright
		sprite_index = spr_up
        break;
    case 2:
        //Facing up
		sprite_index = spr_up
        break;
    case 3:
        //Facing upleft
		sprite_index = spr_up
        break;
    case 4:
        //Facing left
		sprite_index = spr_left
        break;
    case 5:
        //Facing downleft
		sprite_index = spr_left
        break;
    case 6:
        //Facing down
		sprite_index = spr_down
        break;
    case 7:
        //Facing downright
		sprite_index = spr_right
        break;
}