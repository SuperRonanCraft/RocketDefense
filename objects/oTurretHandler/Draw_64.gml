/// @desc draw turrets and their amount

for (var i = 0; i < array_length_1d(turrets); i++) {
	var map = turrets[i], xx = turrets_x - (turrets_offset * i), yy = turrets_y;
	var scale = i == turrets_option ? 0.3 : 0.25;
	draw_sprite_ext(map[? TURRETS_MAP.SPRITE], 0, xx, yy, scale, scale, 0, c_white, 1);
	var str = string(map[? TURRETS_MAP.COST]);
	scDrawText(xx, yy, str, c_white, scale);
}