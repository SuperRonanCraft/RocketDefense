/// @desc draw ui

var c = c_black, c2 = c_aqua;
var targety1 = ui_height[display];
var x1 = ui_x1, y1 = ui_height_current, x2 = ui_x2, y2 = RES_H;

if (y1 != targety1) {
	var rate = 10;
	if (y1 > targety1)
		y1 = max(y1 - rate, targety1);
	else if (y1 < targety1)
	    y1 = min(y1 + rate, targety1);
	ui_height_current = y1;
}

//ui box
scDrawRect(x1, y1, x2, y2, c2, false, 0.4);
scDrawLine(x1, y1, x2, y1, 1, 0.4);

//Main ui
switch (display) {
	case DISPLAY_TYPE.OPEN:
		event_user(1);
		break;
	case DISPLAY_TYPE.CLOSED:
		if (ui_height_current != targety1)
			event_user(1);
		break;
	case DISPLAY_TYPE.EDITTING:
		event_user(1);
		event_user(2);
		break;
}

event_user(0); //Draw ui buttons