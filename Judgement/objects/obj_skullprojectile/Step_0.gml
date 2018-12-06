if (hp == 2) image_alpha = 1;
if (hp == 1) image_alpha = 0.5;

if (hp <= 0) 
{
	obj_cameraClip.shake = true;
	if !audio_is_playing (snd_poof) audio_play_sound(snd_poof,1,0);
	instance_create_layer(x,y,"Bullets",obj_poof);
	instance_destroy();
}

if (instance_exists(obj_charBody))
{
	if (obj_charBody.hp > 0)
	{
		direction = point_direction(x,y,obj_charBody.x, obj_charBody.y);
		image_angle = direction;
		if (hit == 0) move_towards_point(obj_charBody.x, obj_charBody.y, spd)
		if (hit == 1) move_towards_point(obj_charBody.x, obj_charBody.y, -spd*1.5)
	}
	else speed = spd;
}