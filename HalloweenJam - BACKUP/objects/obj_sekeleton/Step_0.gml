if (instance_exists(obj_charBody)){
	if (distance_to_point(obj_charBody.x,obj_charBody.y) <= 100) {
		move_towards_point(obj_charBody.x,obj_charBody.y, spd);
	} else if (cooldown <= 0) {
		instance_create_layer(x,y,"Bullets", obj_bone);
		cooldown = 180;
	} else {
		x = x;
		y = y;
	}
}

cooldown -= 1;


if (hp <= 0) instance_destroy();