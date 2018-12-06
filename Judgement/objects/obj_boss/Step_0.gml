if (movedir == 0) and (x <= 1215) x += movespeed;
if (x > 1215) movedir = 1;

if (movedir == 1) and (x >= 830) x -= movespeed;
if (x < 830) movedir = 0;


if (place_meeting(x,y,obj_potionBreaking) and hitPotion == 0)
{
	hp -= 3;
	alarm[2] = 30;
	hitPotion = 1; 
}

if (hp <= 0) && (dead == false)
{
	audio_stop_all();
	audio_sound_pitch(snd_bossdeath, 0.6);
	audio_play_sound(snd_bossdeath,1,0);
	instance_destroy();
	dead = true;
}

if (hp <= 20) && (enraged == false)
{
	audio_sound_pitch(snd_bossdeath, 1);
	audio_play_sound(snd_bossdeath,1,0);
	image_index += 4;
	cooldown = 80;
	movespeed = 3;
	enraged = true;
}