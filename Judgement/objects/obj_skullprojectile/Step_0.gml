if (instance_exists(obj_charBody)) && (distance_to_point(obj_charBody.x,obj_charBody.y) <= 500) 
	
{
	if (hit == 0) move_towards_point(obj_charBody.x, obj_charBody.y, spd)
	if (hit == 1) move_towards_point(obj_charBody.x, obj_charBody.y, -spd*1.5)
}

if (move_bounce_solid(obj_goblin)){
	move_towards_point(x= -x,y = -y,spd)
} 

if (place_meeting(x,y,obj_potionBreaking) and hitPotion == 0)
{
	hp -= 2;
	alarm[1] = 30;
	hitPotion = 1; 
}

if (hp <= 0) instance_destroy();

direction = point_direction(x,y,obj_charBody.x, obj_charBody.y);
image_angle = direction;