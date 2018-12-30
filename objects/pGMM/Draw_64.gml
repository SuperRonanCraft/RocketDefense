/// @desc draw ui

var c = c_black, c2 = c_aqua;
var x1 = ui_width_start - ui_width, y1 = ui_height_top, x2 = ui_width_start, y2 = ui_height_bottom;

//ui box
scDrawRect(x1, y1, x2, y2, c2, false, 0.4);
scDrawRect(x1, y1, x2, y2, c, true, 0.4);

//Main ui
switch (display) {
	case DISPLAY_TYPE.NORMAL:
		event_user(1);
		break;
	case DISPLAY_TYPE.EDITTING:
		event_user(1);
		event_user(2);
		break;
}

event_user(0); //Draw stats