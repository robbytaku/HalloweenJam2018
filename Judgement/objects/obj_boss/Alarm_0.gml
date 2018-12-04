spawnitem = choose(1,2,3);

if (spawnitem == 1)
{
	instance_create_layer(95, 150, "Bullets", obj_skeleton)
	instance_create_layer(863, 150, "Bullets", obj_skeleton)
}

if (spawnitem == 2)
{
	instance_create_layer(95, 150, "Bullets", obj_skeleton)
	instance_create_layer(863, 150, "Bullets", obj_skeleton)
}

if (spawnitem == 3)
{
	instance_create_layer(95, 150, "Bullets", obj_skeleton)
	instance_create_layer(863, 150, "Bullets", obj_skeleton)
}

alarm[0] = 120;