/// @desc draw main ui (turrets and options)

var ytop = ui_height_top;

scDrawText(turrets_x - (turrets_offset * 1.5), ytop + ((string_height(turrets_title) * ui_font_scale) / 2) + ui_ybuffer, turrets_title, c_white, ui_font_scale);
for (var i = 0; i < array_length_1d(turrets); i++) {
	var map = turrets[i], xx = turrets_x - (turrets_offset * i), yy = ytop + turrets_y;
	var scale = i == turrets_option ? 1.2 : 1, scale2 = i == turrets_option ? 0.5 : 0.4;
	draw_sprite_ext(map[? TURRETS_MAP.SPRITE], 0, xx, yy, scale, scale, 0, c_white, 1);
	var str = string(map[? TURRETS_MAP.COST]);
	scDrawText(xx, yy, str, c_white, scale2);
}