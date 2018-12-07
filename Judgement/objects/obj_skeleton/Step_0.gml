if (instance_exists(obj_charBody)){
	if (distance_to_point(obj_charBody.x,obj_charBody.y) <= 300) 
	{
		sprite_index = spr_skeletonRunning;
		if (hit == 0) move_towards_point(obj_charBody.x, obj_charBody.y, spd)
		if (hit == 1) move_towards_point(obj_charBody.x, obj_charBody.y, -spd*6)
	} if (cooldown <= 0) && (distance_to_point(obj_charBody.x,obj_charBody.y) <= 450) {
		instance_create_layer(x,y,"Bullets", obj_bone);
		cooldown = 90;
	} else {
		x = x;
		y = y;
	}
}
move_bounce_solid(sprite_index = spr_skeletonRunning);

if (place_meeting(x,y,obj_potionBreaking) and hitPotion == 0)
{
	hp -= 3;
	alarm[1] = 30;
	hitPotion = 1; 
}

cooldown -= 1;

if (hp <= 0) 
{
	if !audio_is_playing (snd_poof) audio_play_sound(snd_poof,1,0);
	instance_create_layer(x,y,"Bullets",obj_poof);
	instance_destroy();
}

if hit == 1 image_alpha = 0.5;
else image_alpha = 1;