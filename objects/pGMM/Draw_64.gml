/// @desc editting a turret

event_user(0);
switch (display) {
	case DISPLAY_TYPE.OPEN:
		for (var i = 0; i < array_length_1d(turrets); i++) {
			var map = turrets[i], xx = turrets_x - (turrets_offset * i), yy = turrets_y;
			var scale = i == turrets_option ? 0.5 : 0.4;
			draw_sprite_ext(map[? TURRETS_MAP.SPRITE], 0, xx, yy, scale, scale, 0, c_white, 1);
			var str = string(map[? TURRETS_MAP.COST]);
			scDrawText(xx, yy, str, c_white, 1);
		}
		break;
	case DISPLAY_TYPE.CLOSED:
		break;
	case DISPLAY_TYPE.EDITTING:
		break;
}

var xx = RES_W - 5, yy = RES_H - 5, text =  "COINS: " + string(global.coins), scale = 0.5;
scDrawText(xx, yy, text, c_white, scale, noone, noone, fa_right, fa_bottom);
draw_sprite(sCoins, 0, xx - ((string_width(text) * scale) / 2), yy);