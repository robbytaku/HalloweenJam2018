


if (fireCounter == 1)
{	audio_play_sound(snd_fire, 1, 0);
	instance_create_layer(x - 40, y + 30, "Bullets", obj_fireball)
	instance_create_layer(x + 40, y + 30, "Bullets", obj_fireball)
}

if (fireCounter == 2)
{
	audio_play_sound(snd_fire, 1, 0);
	instance_create_layer(x - 80, y + 30, "Bullets", obj_fireball)
	instance_create_layer(x, y + 30, "Bullets", obj_fireball)
	instance_create_layer(x + 80, y + 30, "Bullets", obj_fireball)
}
fireCounter ++;

if (fireCounter >= 3) 
{
	alarm[1] = 90000;
	fireCounter = 0;
	movespeed = 2;
}
else alarm[1] = 20;
