if (instance_exists(obj_charBody))
{
	move_towards_point(obj_charBody.x, obj_charBody.y, spd)
}



image_alpha = 0.3 * hp;

if (hp <= 0) 
{
	obj_cameraClip.shake = true;
	if !audio_is_playing (snd_poof) audio_play_sound(snd_poof,1,0);
	instance_create_layer(x,y,"Bullets",obj_poof);
	instance_destroy();
}