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
	hp -= 2;
	alarm[1] = 30;
	hitPotion = 1; 
}

cooldown -= 1;

if (hp <= 0) instance_destroy();