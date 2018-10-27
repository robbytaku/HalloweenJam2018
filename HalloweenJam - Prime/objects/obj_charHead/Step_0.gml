x = obj_charBody.x
y = obj_charBody.y - 16





switch(round(point_direction(x,y,mouse_x,mouse_y)/45)){
    case 8:
        //Facing right
		sprite_index = spr_right
        break;
    case 1:
        //Facing upright
		sprite_index = spr_upright
        break;
    case 2:
        //Facing up
		sprite_index = spr_up
        break;
    case 3:
        //Facing upleft
		sprite_index = spr_upleft
        break;
    case 4:
        //Facing left
		sprite_index = spr_left
        break;
    case 5:
        //Facing downleft
		sprite_index = spr_downleft
        break;
    case 6:
        //Facing down
		sprite_index = spr_down
        break;
    case 7:
        //Facing downright
		sprite_index = spr_downright
        break;
}



