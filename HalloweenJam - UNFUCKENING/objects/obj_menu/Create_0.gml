menu_x = x;
menu_y = y;
button_h = 24;
button_w = 256;
button_padding = 8;


button[0] = "New Game";
button[1] = "Options";
button[2] = "Exit";
buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;

var i = 0;
repeat(buttons) {
	unfold[i] = 0;
	i++;
}