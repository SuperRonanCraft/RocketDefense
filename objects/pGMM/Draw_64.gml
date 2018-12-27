/// @desc editting a turret

event_user(1); //Draw ui
event_user(0); //Draw ui button
switch (display) {
	case DISPLAY_TYPE.OPEN:
		for (var i = 0; i < array_length_1d(turrets); i++) {
			var map = turrets[i], xx = turrets_x - (turrets_offset * i), yy = turrets_y;
			var scale = i == turrets_option ? 1.2 : 1, scale2 = i == turrets_option ? 0.5 : 0.4;
			draw_sprite_ext(map[? TURRETS_MAP.SPRITE], 0, xx, yy, scale, scale, 0, c_white, 1);
			var str = string(map[? TURRETS_MAP.COST]);
			scDrawText(xx, yy, str, c_white, scale2);
		}
		break;
	case DISPLAY_TYPE.CLOSED:
		break;
	case DISPLAY_TYPE.EDITTING:
		break;
}