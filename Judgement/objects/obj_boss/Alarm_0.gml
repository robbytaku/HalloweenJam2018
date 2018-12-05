spawnitem = choose(1,2,3);
if (instance_exists(obj_skeleton)) spawnitem = choose(2,3);

if (spawnitem == 1)
{
	audio_play_sound(snd_poof, 1, 0);
	instance_create_layer(800, 770, "Bullets", obj_skeleton)
	instance_create_layer(1245, 770, "Bullets", obj_skeleton)
	alarm[0] = 120;
}

if (spawnitem == 2)
{
	audio_play_sound(snd_skull, 1, 0);
	instance_create_layer(x, y + 30, "Bullets", obj_skullprojectile)
	alarm[0] = 120;
}

if (spawnitem == 3)
{
	movespeed = 0;
	audio_play_sound(snd_fire, 1, 0);
	instance_create_layer(x, y + 30, "Bullets", obj_fireball)
	fireCounter ++;
	if (fireCounter >= 3) 
	{
		alarm[1] = 90000
		fireCounter = 0;
	}
	else alarm[1] = 20;
	alarm[0] = 120;
}
