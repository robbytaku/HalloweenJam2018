x = obj_charBody.x
y = obj_charBody.y

x += lengthdir_x(40, image_angle)
y += lengthdir_y(40, image_angle)

if (obj_charBody.punchypunch == 1) image_yscale = 1;
if (obj_charBody.punchypunch == -1) image_yscale = -1;

