if(place_meeting(x+hspeed, y, obj_wall))
{
    hspeed = -hspeed;
}
if(place_meeting(x, y+vspeed, obj_wall))
{
    vspeed = -vspeed;
}
