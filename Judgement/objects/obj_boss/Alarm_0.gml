spawnitem = choose(1,2,3);

if (spawnitem == 1)
{
	audio_play_sound(snd_poof, 1, 0);
	instance_create_layer(800, 770, "Bullets", obj_skeleton)
	instance_create_layer(1245, 770, "Bullets", obj_skeleton)
	alarm[0] = 280;
}

if (spawnitem == 2)
{
	audio_play_sound(snd_skull, 1, 0);
	instance_create_layer(x, y + 30, "Bullets", obj_skullprojectile)
	alarm[0] = 150;
}

if (spawnitem == 3)
{
	audio_play_sound(snd_fire, 1, 0);
	instance_create_layer(x, y + 30, "Bullets", obj_skullprojectile)
	alarm[0] = 80;
}
