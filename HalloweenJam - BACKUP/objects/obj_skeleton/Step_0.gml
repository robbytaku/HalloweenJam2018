if (instance_exists(obj_charBody)){
	if (distance_to_point(obj_charBody.x,obj_charBody.y) <= 200) 
	{
		sprite_index = spr_skeletonRunning;
		if (hit == 0) move_towards_point(obj_charBody.x, obj_charBody.y, spd)
		if (hit == 1) move_towards_point(obj_charBody.x, obj_charBody.y, -spd*6)
	} if (cooldown <= 0) {
		instance_create_layer(x,y,"Bullets", obj_bone);
		cooldown = 90;
	} else {
		x = x;
		y = y;
	}
}


cooldown -= 1;

if (hp <= 0) instance_destroy();