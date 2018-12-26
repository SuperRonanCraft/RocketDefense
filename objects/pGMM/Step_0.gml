/// @desc create turrets

if (display == DISPLAY_TYPE.CLOSED) exit;

if (mouse_x_old != device_mouse_x_to_gui(0) || mouse_y_old != device_mouse_y_to_gui(0)) { //Mouse is moving
	mouse_x_old = device_mouse_x_to_gui(0);
	mouse_y_old = device_mouse_y_to_gui(0);
	if (mouse_y_old > turrets_y - turrets_height && mouse_y_old < turrets_y + turrets_height) {
		var option = -1;
		for (var i = 0; i < array_length_1d(turrets); i++)
			if (mouse_x_old > turrets_x - (turrets_offset * i) - turrets_length && 
				mouse_x_old < turrets_x - (turrets_offset * i) + turrets_length) {
				option = i;
				break;
			}
		turrets_option = option;
	} else
		turrets_option = -1;
}

var key_select = mouse_check_button_released(mb_left) || keyboard_key_release(vk_enter);

if (key_select && turrets_option != -1 && !turrets_placing) {
	var map = turrets[turrets_option];
	if (global.coins >= map[? TURRETS_MAP.COST]) {
		global.coins -= map[? TURRETS_MAP.COST];
		turrets_placing = true;
		with (instance_create_depth(mouse_x_old, mouse_y_old, depth - 1, oTurret)) {
			owner = other.id;
			turret_map = map;
			scWeaponStart(turret_map[? TURRETS_MAP.WEAPON]);
		}
	}
}