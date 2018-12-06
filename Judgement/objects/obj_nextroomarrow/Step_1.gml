x = obj_charBody.x;
y = obj_charBody.y;

direction = point_direction(x,y,obj_door.x, obj_door.y);
image_angle = direction;

x += lengthdir_x(60, image_angle)
y += lengthdir_y(60, image_angle)