spawnitem = choose(1,2,3);

if (spawnitem == 1)
{
	instance_create_layer(800, 770, "Bullets", obj_skeleton)
	instance_create_layer(1245, 770, "Bullets", obj_skeleton)
	alarm[0] = 240;
}

if (spawnitem == 2)
{
	instance_create_layer(x, y+10, "Bullets", obj_skullprojectile)
	alarm[0] = 120;
}

if (spawnitem == 3)
{
	instance_create_layer(800, 770, "Bullets", obj_skeleton)
	instance_create_layer(1245, 770, "Bullets", obj_skeleton)
	alarm[0] = 80;
}
