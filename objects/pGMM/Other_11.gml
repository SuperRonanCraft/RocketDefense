/// @desc draw ui

var arry = ui[display], c = c_black, c2 = c_aqua;
var x1 = arry[0], y1 = arry[1], x2 = arry[2], y2 = arry[3];
draw_set_alpha(0.4);
//ui box
draw_rectangle_color(x1, y1, x2, y2, c, c, c, c, true);
draw_rectangle_color(x1, y1, x2, y2, c2, c2, c2, c2, false);
//ui coins box
var xx = RES_W - 5, yy = RES_H - 5, text = "COINS: " + string(global.coins), scale = 0.5;
scDrawText(xx, yy, text, c_white, scale, noone, noone, fa_right, fa_bottom);
var width = string_width(text) * scale, height = string_height(text) * scale;
xx -= (width + 20);
yy -= height / 2;
draw_rectangle_color(xx - 20, RES_H - 30, RES_W, RES_H, c, c, c, c, true); //coins
draw_healthbar(xx - 110, yy - 4, xx - 30, yy + 4, global.hp, c_black, c_red, c_lime, 0, true, true);
draw_rectangle_color(xx - 121, RES_H - 30, xx - 21, RES_H, c, c, c, c, true); //hp

draw_set_alpha(1);
draw_sprite(sCoins, 0, xx, yy);