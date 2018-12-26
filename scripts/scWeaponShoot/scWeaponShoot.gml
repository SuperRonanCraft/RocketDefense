/// @desc checks the cooldown, if so, start the next cooldown
/// @arg force the cooldown

if (current_cd == 0 || (argument_count > 0 ? argument[0] : false)) {
	//x = other.x;
	//y = other.y;
	current_cd = weapon_map[? WEAPON_MAP.COOLDOWN];
	current_delay = weapon_map[? WEAPON_MAP.STARTUP];
}