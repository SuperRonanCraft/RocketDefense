/// @desc draw button

var arry = button[display], c = c_black, c2 = c_aqua;
var x1 = arry[0], y1 = arry[1], x2 = arry[2], y2 = arry[3];
draw_rectangle_color(x1, y1, x2, y2, c, c, c, c, true);
draw_rectangle_color(x1, y1, x2, y2, c2, c2, c2, c2, false);
var text = display == DISPLAY_TYPE.CLOSED ? "OPEN" : "CLOSE", scale = 0.4;

if (scMouseHovering(x1, y1, x2, y2)) {
	scale = 0.5;
	if (mouse_check_button_pressed(mb_left)) 
		if (display == DISPLAY_TYPE.CLOSED)
			display = DISPLAY_TYPE.OPEN;
		else
			display = DISPLAY_TYPE.CLOSED;
}
		
scDrawText((x1 + x2) / 2, (y1 + y2) / 2, text, c_white, scale);