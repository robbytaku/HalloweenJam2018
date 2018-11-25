//x = obj_charHead.x - (obj_charHead.x - mouse_x)/6;
//y = obj_charHead.y - (obj_charHead.y - mouse_y)/6;

x = obj_charBody.x;
y = obj_charBody.y;


if(shake){
    shakeDur --;
    x += choose(-shakeForce,shakeForce);
    y += choose(-shakeForce,shakeForce);
    if(shakeDur <= 0){
        shake = false;
        shakeDur = 12;
    }
}

else{
    x = approach(x,0,0.3);
    y = approach(y,0,0.3);
}