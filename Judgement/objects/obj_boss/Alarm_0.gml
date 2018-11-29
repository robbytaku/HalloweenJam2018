spawnitem = choose(1,2,3);

if (spawnitem == 1)
{
	instance_create_layer(95, 150, obj_skeleton, "Bullets")
	instance_create_layer(863, 150, obj_skeleton, "Bullets")
}

if (spawnitem == 2)
{
	instance_create_layer(95, 150, obj_skeleton, "Bullets")
	instance_create_layer(863, 150, obj_skeleton, "Bullets")
}

if (spawnitem == 3)
{
	instance_create_layer(95, 150, obj_skeleton, "Bullets")
	instance_create_layer(863, 150, obj_skeleton, "Bullets")
}

alarm[0] = 120;