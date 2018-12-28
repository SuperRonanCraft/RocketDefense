/// @desc Hit a shootable

//If the rocket is not from the same shooter
if (owner != other.id) {
	//Apply the rockets buffs by default
	//if (weapon_map[? WEAPON_MAP.BUFF] != noone)
	//	scAddBuff(weapon_map[? WEAPON_MAP.BUFF], other);
	//Add the pShootable to the hitlist
	ds_list_add(hitList, other);
	//Do damage once to the hitlist
	for (var i = 0; i < ds_list_size(hitList); i++)
		if (ds_list_find_index(confirmList, hitList[| i]) == -1) {
			ds_list_add(confirmList, hitList[| i]);
			var dmg = weapon_map[? WEAPON_MAP.DAMAGE] * owner.turret_map[? TURRETS_MAP.WEAPON_DAMAGEBUFF];
			if (dmg != -1 && weapon_map[? WEAPON_MAP.DAMAGE_DIRECT] != 0)
				dmg = weapon_map[? WEAPON_MAP.DAMAGE_DIRECT];
			//Damage player
			scEnemyHit(hitList[| i], owner, dmg);
			//Add buff
			//if (weapon_map[? ROCKET_MAP.BUFF] != noone)
				//scAddBuff(weapon_map[? WEAPON_MAP.BUFF], hitList[| i]);
			//scAddUltCharge(owner, DAMAGETYPE.DIRECT); //Add direct ult charge
		}
	//Custom Explosion with a pShootable script
	if (weapon_map[? WEAPON_MAP.EXPLOSION_SHOOTABLE] != noone)
		script_execute(weapon_map[? WEAPON_MAP.EXPLOSION_SHOOTABLE], other);
	else
		//Run the default explosion event/script
		event_user(0);
}