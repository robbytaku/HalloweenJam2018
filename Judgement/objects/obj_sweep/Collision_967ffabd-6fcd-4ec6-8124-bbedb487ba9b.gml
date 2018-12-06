if (other.hit == 0){
	if (!audio_is_playing(snd_skeletonhit)) audio_play_sound(snd_skeletonhit,1,0);
	other.hit = 1;
	obj_cameraClip.shake = true;
	other.hp -= 1;
	other.alarm[0] = 12;
}
