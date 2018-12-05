if (instance_exists(obj_boss))
{
	x = obj_boss.x;
	y = obj_boss.y - 50;

	image_index = 40 - obj_boss.hp;
}
else instance_destroy(self);