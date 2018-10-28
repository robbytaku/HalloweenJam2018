menu_move = mouse_wheel_down() - mouse_wheel_up();

menu_index += menu_move;

if (menu_index < 0) menu_index = buttons - 1;
if (menu_index > buttons - 1) menu_index = 0;

var i = 0;
repeat(buttons) {
	if (unfold[i] == 1) i++;
	if (i < buttons) unfold[i] = min(1, unfold[i] + 0.02);
	if (i + 1 < buttons) unfold[i+1] = min(1, unfold[i+1] + 0.005);
}

if (menu_index != last_selected) {
	//audio_play_sound(snd_menu_switch, 1, false);
	part_particles_create(particle_effects, menu_x, menu_y + button_h/2 + (button_h + button_padding) * menu_index, box_flash, 1);
}

last_selected = menu_index;

if (mouse_check_button(mb_left)) {
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
}