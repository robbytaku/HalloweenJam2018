if instance_exists(obj_key)
{
	visible = true;
	direction = point_direction(x,y,obj_key.x, obj_key.y);
	image_angle = direction;
}
else instance_destroy(self);

x = obj_charBody.x;
y = obj_charBody.y;


x += lengthdir_x(60, image_angle)
y += lengthdir_y(60, image_angle)

