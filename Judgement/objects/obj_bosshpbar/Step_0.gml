if obj_boss.hp > 0
{
	x = obj_boss.x;
	y = obj_boss.y - 80;

	image_index = 40 - obj_boss.hp;
}
else instance_destroy(self);