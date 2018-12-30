/// @desc create turrets

//if (display != DISPLAY_TYPE.NORMAL) exit;

//Selecting a turret
if (mouse_x_old != device_mouse_x_to_gui(0) || mouse_y_old != device_mouse_y_to_gui(0)) { //Mouse is moving
	mouse_x_old = device_mouse_x_to_gui(0);
	mouse_y_old = device_mouse_y_to_gui(0);
	var ytop = ui_height_top;
	if (mouse_y_old > ytop + turrets_y - turrets_height && mouse_y_old < ytop + turrets_y + turrets_height) {
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

if (key_select && turrets_option != -1 && !turrets_placing)
	with (instance_create_depth(mouse_x_old, mouse_y_old, depth - 1, oTurret)) {
		other.turrets_placing = true;
		owner = other.id;
		turret_map = other.turrets[other.turrets_option];
		scWeaponStart(turret_map[? TURRETS_MAP.WEAPON]);
	}