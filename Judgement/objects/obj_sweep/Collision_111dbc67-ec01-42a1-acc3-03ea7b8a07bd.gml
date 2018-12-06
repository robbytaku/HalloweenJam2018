if (other.hit == 0){
	if (!audio_is_playing(snd_ghosthit)) audio_play_sound(snd_ghosthit,1,0);
	other.hit = 1;
	other.hp -= 1;
	other.alarm[0] = 12;
}