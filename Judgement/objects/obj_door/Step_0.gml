if (obj_charBody.key == true && room == room_mansion2)
{
	if (place_meeting(x + 9,y + 9,obj_charBody)) and (obj_score.number == 0) room_goto_next();
	if (place_meeting(x + 9,y - 9,obj_charBody)) and (obj_score.number == 0) room_goto_next();
}
if (room != room_mansion2)
{
	if (place_meeting(x + 9,y + 9,obj_charBody)) and (obj_score.number == 0) room_goto_next();
	if (place_meeting(x + 9,y - 9,obj_charBody)) and (obj_score.number == 0) room_goto_next();
}