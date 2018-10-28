if (keyboard_check(ord("W")) and !place_meeting(x,y - 1,obj_Wall))y = y - 8
if (keyboard_check(ord("A")) and !place_meeting(x - 1,y,obj_Wall)) x = x - 8
if (keyboard_check(ord("S")) and !place_meeting(x,y + 1,obj_Wall)) y = y + 8
if (keyboard_check(ord("D")) and !place_meeting(x + 1,y,obj_Wall)) x = x + 8

