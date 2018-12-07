if !instance_exists(obj_rtorestart)
{
	audio_stop_all();
	instance_create_layer(x,y,"crosshair",obj_rtorestart);
}