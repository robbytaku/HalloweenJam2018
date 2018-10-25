/// @description Character Movement
if (keyboard_check(ord("D"))) x = x + 15;
if (keyboard_check(ord("A"))) x = x - 15;
if (keyboard_check(ord("W"))) y = y - 15;
if (keyboard_check(ord("S"))) y = y + 15;

image_angle = point_direction(x,y,mouse_x,mouse_y)