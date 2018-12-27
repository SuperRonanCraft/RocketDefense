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
draw_set_alpha(0.4);
//ui box
draw_rectangle_color(x1, y1, x2, y2, c, c, c, c, true);
draw_rectangle_color(x1, y1, x2, y2, c2, c2, c2, c2, false);