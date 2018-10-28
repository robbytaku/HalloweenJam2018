if (instance_exists(obj_charBody))
{
	move_towards_point(obj_charBody.x, obj_charBody.y, spd)
}


if (hp <= 0) instance_destroy();

image_alpha = 0.2 * hp;