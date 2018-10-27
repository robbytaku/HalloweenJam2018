x = obj_charBody.x
y = obj_charBody.y


direction = point_direction(x,y,mouse_x,mouse_y);
image_angle = direction;

x += lengthdir_x(32, image_angle)
y += lengthdir_y(32, image_angle)

