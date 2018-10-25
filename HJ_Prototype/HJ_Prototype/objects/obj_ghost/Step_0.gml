if (instance_exists(obj_Char))
{
	move_towards_point(obj_Char.x, obj_Char.y, spd)
}

image_angle = point_direction(1,1,1,1);

if (hp <= 0) instance_destroy();

