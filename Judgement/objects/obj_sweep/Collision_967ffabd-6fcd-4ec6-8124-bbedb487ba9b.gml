if (other.hit == 0){
	other.hit = 1;
	obj_cameraClip.shake = true;
	other.hp -= 1;
	other.alarm[0] = 12;
}
