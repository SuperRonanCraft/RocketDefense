/// @arg Weapon
var weapon = argument0;
//Makes sure rocket is not the same as the one already equipped (everts auto reload)
if (weapon_map[? WEAPON_MAP.TYPE] != weapon) {
	//Clear the map
	weapon_map = 0;
	//All default values
	scWeaponDefaults();
	//Grab custom weapon keys
	var wp_map = weapons[weapon];
	var key = ds_map_find_first(wp_map);
	for (var i = 0; i <	ds_map_size(wp_map); i++) {
		if (i != 0)
			key = ds_map_find_next(wp_map, key);
		weapon_map[? key] = wp_map[? key];
	}
	ammo = weapon_map[? WEAPON_MAP.CLIP];
	current_cd = weapon_map[? WEAPON_MAP.COOLDOWN];
}