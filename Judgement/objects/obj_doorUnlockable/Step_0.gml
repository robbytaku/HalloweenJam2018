if place_meeting(x, y + 24, obj_charBody)
{
	audio_play_sound(snd_unlock,1,0);
	instance_destroy(inst_5FB2D03C);
	instance_destroy(inst_78966804);
	instance_destroy(inst_3F7ED51A);
	instance_destroy(inst_1A1DA1AA);
	
	instance_destroy();
}