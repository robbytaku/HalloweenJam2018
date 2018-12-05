if (other.hit == 0){
	if (!audio_is_playing(snd_goblinhit)) audio_play_sound(snd_goblinhit,1,0);
	other.hit = 1;
	other.hp -= 1;
	other.alarm[0] = 12;
}