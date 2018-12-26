/// @desc hurt the players in the hitlist
/// run custom step event and destroy 
if (doing_damage)
	for (var i = 0; i < ds_list_size(hitList); i++)
		if (ds_list_find_index(confirmList, hitList[| i]) == -1) {
			ds_list_add(confirmList, hitList[| i]);
			var dmg = weapon_map[? WEAPON_MAP.DAMAGE];
			if (dmg != -1 && rocket_map[? WEAPON_MAP.DAMAGE_EXPLOSION] != 0)
				dmg = weapon_map[? WEAPON_MAP.DAMAGE_EXPLOSION];
			//Damage player
			//with (hitList[| i]) 
			//	scHitShootable(other.parent, false, true, dmg);
			//Add buff
			//if (weapon_map[? WEAPON_MAP.BUFF] != noone)
			//	scAddBuff(rocket_map[? WEAPON_MAP.BUFF], hitList[| i]);
			//scAddUltCharge(parent, DAMAGETYPE.SPLASH); //Add ult charge splash dmg
		}
if (weapon_map[? WEAPON_MAP.EXPLOSION_STEP] != noone)
	script_execute(rocket_map[? WEAPON_MAP.EXPLOSION_STEP]);
if (destroy && image_speed == 0)
	instance_destroy();