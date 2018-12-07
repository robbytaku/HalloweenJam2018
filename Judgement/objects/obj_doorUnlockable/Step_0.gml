if place_meeting(x, y + 24, obj_charBody)
{
	audio_play_sound(snd_unlock,1,0);
	instance_destroy();
}