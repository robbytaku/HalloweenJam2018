switch(menu_index) {

case 0:
	room_goto(room_lobby);
	break;
case 1:
	room_goto(room_contols);
	break;
case 2:
	room_goto(room_options);
	break;
case 3:
	game_end();
	break;
}