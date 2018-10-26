if (instance_exists(obj_Char))
{
	move_towards_point(obj_Char.x, obj_Char.y, spd)
}

image_angle = point_direction(obj_Char.x,y,x,-y)


if (hp <= 0) instance_destroy();

