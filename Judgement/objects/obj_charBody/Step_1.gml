if (keyboard_check(ord("D")) and !place_meeting(x + 8, y, obj_wall) and !place_meeting(x + 8, y, obj_door) and dead == false) x += 4;
if (keyboard_check(ord("A")) and !place_meeting(x - 8, y, obj_wall) and !place_meeting(x - 8, y + 8, obj_door) and dead == false) x -= 4;
if (keyboard_check(ord("W")) and !place_meeting(x, y - 8, obj_wall) and !place_meeting(x, y - 8, obj_door) and dead == false) y -= 4;
if (keyboard_check(ord("S")) and !place_meeting(x, y + 8, obj_wall) and !place_meeting(x, y + 8, obj_door) and dead == false) y += 4;




if (keyboard_check(ord("D"))) sprite_index = spr_bodyRight;
if (keyboard_check(ord("A"))) sprite_index = spr_bodyLeft;
if (keyboard_check(ord("W")) and !keyboard_check(ord("D")) and !keyboard_check(ord("A"))) sprite_index = spr_bodyUp;
if (keyboard_check(ord("S")) and !keyboard_check(ord("D")) and !keyboard_check(ord("A"))) sprite_index = spr_bodyDown;


cooldown -= 1;

if ((mouse_check_button(mb_right)) and cooldown < 1 and dead == false)
{
	instance_create_layer(x,y,"Bullets",obj_bullet)
	cooldown = 72;
}

if ((mouse_check_button(mb_left)) and cooldown < 1 and dead == false)
{
	instance_create_layer(x,y,"Bullets",obj_sweep)
	cooldown = 30;
	punchypunch *= -1;
}

if ((place_meeting(x,y,obj_skeleton)) or (place_meeting(x,y,obj_bone)) or (place_meeting(x,y,obj_goblin)) or (place_meeting(x,y,obj_ghost))) and (hit == 0)
{
	audio_play_sound(snd_hit, 0 ,false);
	hit = 1;
	hp -= 1;
	invincibility = 0;
}

if (invincibility >= 120) hit = 0;

if (hit == 1)
{
	image_alpha = 0.5;
	obj_charHead.image_alpha = 0.5;
	invincibility += 1;
}

if (hit == 0) 
{
	obj_charHead.image_alpha = 1;
	image_alpha = 1;
}

if (hp <= 0) dead = true;

if (dead == true)
{
	image_alpha = 0;
	obj_charHead.image_alpha = 0;
	audio_stop_all();
	room_goto(room_credits);
}
