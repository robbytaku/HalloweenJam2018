direction = point_direction(x,y,obj_charBody.x,obj_charBody.y)
direction -= random_range (-8,8);
speed = 3;
image_angle = direction;

audio_play_sound(snd_bones, 0, false);