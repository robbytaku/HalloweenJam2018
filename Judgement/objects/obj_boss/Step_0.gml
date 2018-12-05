if (movedir == 0) and (x <= 1215) x += movespeed;
if (x > 1215) movedir = 1;

if (movedir == 1) and (x >= 830) x -= movespeed;
if (x < 830) movedir = 0;


if (place_meeting(x,y,obj_potionBreaking) and hitPotion == 0)
{
	hp -= 2;
	alarm[2] = 30;
	hitPotion = 1; 
}

if (hp <= 0) instance_destroy();
