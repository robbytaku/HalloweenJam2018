if (place_meeting(x,y,obj_potionBreaking) and hitPotion == 0)
{
	hp -= 2;
	alarm[1] = 30;
	hitPotion = 1; 
}

if (hp == 2) image_alpha = 1;
if (hp == 1) image_alpha = 0.5;

if (hp <= 0) instance_destroy();

if (instance_exists(obj_charBody))
{
	if (obj_charBody.hp > 0)
	{
		direction = point_direction(x,y,obj_charBody.x, obj_charBody.y);
		image_angle = direction;
		if (hit == 0) move_towards_point(obj_charBody.x, obj_charBody.y, spd)
		if (hit == 1) move_towards_point(obj_charBody.x, obj_charBody.y, -spd*1.5)
	}
	else speed = spd;
}