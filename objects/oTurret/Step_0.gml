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
		x = mouse_x;
		y = mouse_y;
	}
} else {
	if (turret_map == noone) exit;
	canshoot = distance_to_object(oEnemy) < turret_map[? TURRETS_MAP.RADIUS];
	if (canshoot) {
		var inst = instance_nearest(x, y, oEnemy);
		direction = point_direction(x, y, inst.x, inst.y);
		scWeaponShoot();
	}
}

scWeaponProgress();