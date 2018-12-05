spawnitem = choose(1,2,3);

if (spawnitem == 1)
{
	instance_create_layer(625, 700, "Bullets", obj_skeleton)
	instance_create_layer(1400, 700, "Bullets", obj_skeleton)
	alarm[0] = 300;
}

if (spawnitem == 2)
{
	instance_create_layer(x, y+10, "Bullets", obj_skullprojectile)
	alarm[0] = 120;
}

if (spawnitem == 3)
{
	instance_create_layer(95, 150, "Bullets", obj_skeleton)
	instance_create_layer(863, 150, "Bullets", obj_skeleton)
	alarm[0] = 180;
}
