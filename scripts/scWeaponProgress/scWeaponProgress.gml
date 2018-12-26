/// @desc Check when to shoot a tocket


if (weapon_map[? WEAPON_MAP.PROJECTILE] == -1 || weapon_map[? WEAPON_MAP.TYPE] == WEAPON.NONE) exit;
//Set the direction of the rocket

//Rocket
if (current_delay == 0) {
	if (ammo != 0) {
		var offset = weapon_map[? WEAPON_MAP.OFFSET];
		with (instance_create_depth(x + lengthdir_x(offset, direction), y + lengthdir_y(offset, direction), depth + 1, oWeapon)) {
			direction = other.direction;
			image_angle = direction;
			sprite_index = other.weapon_map[? WEAPON_MAP.PROJECTILE];
			owner = other.id;
			weapon_map = ds_map_create();
			ds_map_copy(weapon_map, other.weapon_map);
			timer = other.weapon_map[? WEAPON_MAP.TIMER];
		}
		ammo -= 1;
		//Recoil code
		//with (owner) {
		//	hsp -= lengthdir_x(other.recoil_push, other.direction);
		//	vsp -= lengthdir_y(other.recoil_push, other.direction);
		//}
		//current_recoil = recoil;
		
		//Sound effects and screen shaking
		//scPlaySound(rocket_map[? ROCKET_MAP.SOUND_SHOOT], random_range(0.8, 1.2));
	}
}

//Cooldown
current_delay = max(-1, current_delay - 1);
if (current_delay == -1)
	current_cd = max(0, current_cd - 1);
current_recoil = max(0, floor(current_recoil * 0.8));

//Reload
if (ammo == 0)
	if (current_reload > weapon_map[? WEAPON_MAP.RELOAD_TIME]) {
		ammo = weapon_map[? WEAPON_MAP.CLIP];
		current_reload = 0;
	} else
		current_reload++;