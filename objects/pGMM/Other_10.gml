/// @desc bottom ui

var c = c_black, c2 = c_aqua;
var x1left = 0, x2right = RES_W;
var x1, x2, y1 = RES_H - (ui_font_height + (ui_ybuffer * 2)), y2 = RES_H, ymid = (y2 + y1) / 2;

//Right Aligned

//Coins
var text_open = display == DISPLAY_TYPE.CLOSED ? "OPEN" : "CLOSE", scale = 0.4;
var text = string(global.coins);
x1 = x2right - (string_width(text) * ui_font_scale) - (coins_sprite_width / 2) - (ui_xbuffer * 3);
x2 = x2right;
x2right = x1;
//Coins image rotate
if (timer >= coins_image_spd) {
	timer = 0;
	coins_image_current++;
	if (coins_image_current >= coins_image_amt)
		coins_image_current = 0;
} else
	timer++;
scDrawLine(x1, y1, x1, y2, 1, 0.4);
scDrawText(x2 - ui_xbuffer, ymid, text, c_white, ui_font_scale, noone, noone, fa_right);
draw_sprite(coins_sprite, coins_image_current, x1 + ui_xbuffer + (coins_sprite_width / 4), ymid); //coins image

//Health
text = string(global.coins);
x1 = x2right - health_barlen - health_sprite_width - (ui_xbuffer * 3);
x2 = x2right;
x2right = x1;
scDrawLine(x1, y1, x1, y2, 1, 0.4);
draw_healthbar(x1 + ui_xbuffer * 2, ymid - 4, x2 - ui_xbuffer, ymid + 4, global.hp, c_black, c_red, c_lime, 0, true, true); //bar
scDrawText(((x1 + ui_xbuffer * 2) + (x2 - ui_xbuffer) ) / 2, ymid, string(global.hp) + "/100", c_white, ui_font_scale); //text//
//scDrawRect(x1, RES_H - 30, x2, RES_H, c, true, 0.4); //hp
draw_sprite_ext(health_sprite, 0, x1 + ui_xbuffer + (health_sprite_width / 2), ymid, health_scale, health_scale, 0, c_white, 1); //hp image
health_scale = max(health_scale * 0.95, 1);

//Across top of right aligned
scDrawLine(x1, y1, RES_W, y1, 1, 0.4);

//Left Aligned

//Open button
var scale = ui_font_scale;
x2 = x1left + (string_width(text_open) * scale) + ui_xbuffer * 2;
x1 = x1left;
x1left = x2;
if (scMouseHovering(x1, y1, x2, y2)) {
	scale += 0.05;
	if (mouse_check_button_pressed(mb_left)) 
		if (display == DISPLAY_TYPE.CLOSED)
			display = DISPLAY_TYPE.OPEN;
		else
			display = DISPLAY_TYPE.CLOSED;
}
scDrawLine(x2, y1, x2, y2, 1, 0.4);
//scDrawRect(x1, y1, x2, y2, c, true, 0.4);
scDrawText((x1 + x2) / 2, ymid, text_open, c_white, scale);

//Snap-to-grid button
scale = ui_font_scale;
text = global.grid_snap ? "SNAP TO GRID ON" : "SNAP TO GRID OFF"
x2 = x1left + (string_width(text) * scale) + ui_xbuffer * 2;
x1 = x1left;
x1left = x1;
scDrawLine(x2, y1, x2, y2, 1, 0.4);
//scDrawRect(x1, y1, x2, y2, c, true, 0.4);

if (scMouseHovering(x1, y1, x2, y2)) {
	scale += 0.05;
	if (mouse_check_button_pressed(mb_left)) 
		global.grid_snap = !global.grid_snap;
}
scDrawText((x1 + x2) / 2, ymid, text, c_white, scale);

//Across top of left aligned
scDrawLine(0, y1, x2, y1, 1, 0.4);