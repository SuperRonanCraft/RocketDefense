/// @description Insert description here
// You can write your code in this editor

if (placing) {
	placeable = !place_meeting(x, y, oPath) && !place_meeting(x, y, object_index);
	if (mouse_check_button_pressed(mb_left)) {
		if (placeable) {
			placing = false;
			owner.turrets_placing = false;
		}
	} else {
		if (global.grid_snap) {
			var size = GRID_SIZE, offset = size / 2;
			x = round((mouse_x - offset) / size) * size + offset;
			y = round((mouse_y - offset) / size) * size + offset;
		} else {x = mouse_x; y = mouse_y;}
	}
} else {
	if (turret_map == noone) exit;
	canshoot = distance_to_object(oEnemy) < turret_map[? TURRETS_MAP.RADIUS];
	if (canshoot) {
		scRotateToTarget(id, instance_nearest(x, y, oEnemy), 5, 1);
		scWeaponShoot();
	} else
		script_execute(turret_map[? TURRETS_MAP.SCRIPT_IDLE]);
}

scWeaponProgress();