direction = point_direction(x,y,mouse_x,mouse_y);
image_angle = direction;


alarm[0] = 12;

audio_play_sound(snd_sweep, 0, false);
audio_sound_pitch(snd_sweep, 2);