if (instance_exists(obj_charBody))
{
	if (hit == 0) move_towards_point(obj_charBody.x, obj_charBody.y, spd)
	if (hit == 1) move_towards_point(obj_charBody.x, obj_charBody.y, -spd*1.5)
}



if (hp <= 0) instance_destroy();
