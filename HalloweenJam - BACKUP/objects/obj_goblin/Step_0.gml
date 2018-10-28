/*if (instance_exists(obj_charBody)){
	move_towards_point(obj_charBody.x, obj_charBody.y, spd)
}
*/

if (instance_exists(obj_charBody)){
	if (distance_to_point(obj_charBody.x,obj_charBody.y) <= 300) {
		move_towards_point(obj_charBody.x,obj_charBody.y, spd);
	} 
}
if (hp <= 0) {
	instance_destroy();
}