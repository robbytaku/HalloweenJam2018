if (keyboard_check(ord("D")) and !place_meeting(x + 1, y, obj_wall)) x += 4;
if (keyboard_check(ord("A")) and !place_meeting(x - 1, y, obj_wall)) x -= 4;
if (keyboard_check(ord("W")) and !place_meeting(x, y - 1, obj_wall)) y -= 4;
if (keyboard_check(ord("S")) and !place_meeting(x, y + 1, obj_wall)) y += 4;


if (keyboard_check(ord("D"))) sprite_index = spr_bodyRight
if (keyboard_check(ord("A"))) sprite_index = spr_bodyLeft
if (keyboard_check(ord("W")) and !keyboard_check(ord("D")) and !keyboard_check(ord("A"))) sprite_index = spr_bodyUp
if (keyboard_check(ord("S")) and !keyboard_check(ord("D")) and !keyboard_check(ord("A"))) sprite_index = spr_bodyDown

cooldown -= 1;

if (mouse_check_button(mb_right)) && (cooldown < 1)
{
	instance_create_layer(x,y,"Bullets",obj_bullet)
	cooldown = 24;
}

if (mouse_check_button(mb_left)) && (cooldown < 1)
{
	instance_create_layer(x,y,"Bullets",obj_sweep)
	cooldown = 24;

}
if (hp <= 0) instance_destroy();