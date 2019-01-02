/// @description Insert description here
// You can write your code in this editor

if (placing) {
	placeable = !place_meeting(x, y, oPath) && !place_meeting(x, y, object_index);
	if (mouse_check_button_pressed(mb_left)) {
		if (placeable && scTurretCanPlace(turret_map[? TURRETS_MAP.COST])) {
			placing = false;
			owner.turrets_placing = false;
			scWeaponStart(turret_map[? TURRETS_MAP.WEAPON]);
			scTurretEdit(id); //Start to edit this turret
		}
	} else if (mouse_check_button_pressed(mb_right)) {
		owner.turrets_placing = false;
		instance_destroy();
	} else {
		if (global.grid_snap) {
			var size = GRID_SIZE, offset = size / 2;
			x = round((mouse_x - offset) / size) * size + offset;
			y = round((mouse_y - offset) / size) * size + offset;
		} else {x = mouse_x; y = mouse_y;}
	}
} else {
	if (turret_map == noone) exit;
	//Can you shoot?
	var canshoot = current_cd == 0 && distance_to_object(oEnemy) <= turret_map[? TURRETS_MAP.RADIUS];
	if (canshoot) {
		target = scTurretTarget(oEnemy, turret_map[? TURRETS_MAP.RADIUS], targetting);
		with (target)
			scRotateToTarget(other.id, id, other.weapon_map[? WEAPON_MAP.SPEED]);
		scWeaponShoot();
		script_execute(turret_map[? TURRETS_MAP.SCRIPT_AIMING])
	} else 
		script_execute(turret_map[? TURRETS_MAP.SCRIPT_IDLE]);
	scWeaponProgress();
}