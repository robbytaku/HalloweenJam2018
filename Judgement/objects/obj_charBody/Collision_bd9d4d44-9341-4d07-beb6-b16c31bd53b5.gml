instance_create_layer(other.x,other.y,"Bullets",obj_bonebreaking);
obj_bonebreaking.image_angle = other.image_angle;
instance_destroy(other);

if (hit == 0)
{	
	audio_play_sound(snd_hit, 0 ,false);
	hit = 1;
	hp -= 1;
	invincibility = 0;
}