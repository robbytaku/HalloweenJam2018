instance_destroy(other);

if (hit == 0)
{	
	audio_play_sound(snd_hit, 0 ,false);
	hit = 1;
	hp -= 1;
	invincibility = 0;
}