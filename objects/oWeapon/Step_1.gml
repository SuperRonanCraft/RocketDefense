/// @desc first step after create
if (first_step) exit;

if (weapon_map[? WEAPON_MAP.WEAPON_CREATE] != noone) //Script to run when a rocket has been created
	script_execute(weapon_map[? WEAPON_MAP.WEAPON_CREATE]);
first_step = true;