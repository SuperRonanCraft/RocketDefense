/// @desc Move Rocket

//Run special step script and override movement
if (weapon_map[? WEAPON_MAP.WEAPON_STEP] != noone)
	script_execute(weapon_map[? WEAPON_MAP.WEAPON_STEP]);
else {
	x += lengthdir_x(weapon_map[? WEAPON_MAP.SPEED], direction);
	y += lengthdir_y(weapon_map[? WEAPON_MAP.SPEED], direction);
}

if (timer > 0)
	timer--;
else if (timer == 0)
	event_user(0);

if (x > RES_W + 20 || x < -20 || y > RES_H || y < -20)
	event_user(0);
	
if (destroy)
	instance_destroy();