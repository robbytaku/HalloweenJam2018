//set up motion
direction = point_direction(x,y,mouse_x,mouse_y)
direction = direction + random_range(-4,4);
speed = 6;
image_angle = direction;
cooldown = 0;