if (instance_exists(obj_charBody))
{
	move_towards_point(obj_charBody.x, obj_charBody.y, spd)
}


if (hp <= 0) instance_destroy();

if (place_meeting(x,y,obj_potionBreaking) and hitPotion == 0)
{
	hp -= 2;
	alarm[1] = 30;
	hitPotion = 1; 
}

image_alpha = 0.2 * hp;