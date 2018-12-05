x = obj_charHead.x - (obj_charHead.x - mouse_x)/12;
y = obj_charHead.y - (obj_charHead.y - mouse_y)/12;

//x = obj_charBody.x;
//y = obj_charBody.y;


if(shake){
    shakeDur --;
    x += choose(-shakeForce,shakeForce);
    y += choose(-shakeForce,shakeForce);
    if(shakeDur <= 0){
        shake = false;
        shakeDur = 15;
    }
}

else{
    x = approach(x,0,0.3);
    y = approach(y,0,0.3);
}