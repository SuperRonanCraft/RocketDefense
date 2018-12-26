/// @desc Load all rockets and set the default rocket
/// @arg default-weapon

//DEFAULT
wep = WEAPON.DEFAULT;
weapons[wep] = ds_map_create();
ds_map_add(weapons[wep], WEAPON_MAP.TYPE, wep);
ds_map_add(weapons[wep], WEAPON_MAP.NAME, "Default");
ds_map_add(weapons[wep], WEAPON_MAP.DESCRIPTION, "Explosive  device");
ds_map_add(weapons[wep], WEAPON_MAP.RECOIL, 2);
ds_map_add(weapons[wep], WEAPON_MAP.PROJECTILE, WEAPON_SPRITE.DEFAULT);
ds_map_add(weapons[wep], WEAPON_MAP.COOLDOWN, 20);
ds_map_add(weapons[wep], WEAPON_MAP.SPEED, 4);

enum WEAPON {
	NONE,
	DEFAULT, 
	
	//KEEP LAST
	LENGHT
}

enum WEAPON_SPRITE {
	//Mostly used to save memory on oRocketPickup, or to insta grab a rocket sprite
	NONE = noone, DEFAULT = sWeapon1
}

enum WEAPON_MAP {
	//BASIC VARIABLES
	RECOIL, PROJECTILE, COOLDOWN, SPEED, OFFSET, STARTUP, CLIP,
	RELOAD_TIME, TIMER, IGNORE_WALL, NAME, DESCRIPTION, BUFF, TYPE, 
	//DAMAGE TYPES
	DAMAGE, DAMAGE_DIRECT, DAMAGE_EXPLOSION,
	//ROCKET EVENTS
	WEAPON_CREATE, WEAPON_STEP, WEAPON_DRAW,
	//PARTICLES
	PARTICLE_TRAIL, PARTICLE_EXPLOSION, PARTICLE_AMT,
	//EXPLOSION SCRIPTS
	EXPLOSION_SPRITE, EXPLOSION_ROCKET, EXPLOSION_WALL, EXPLOSION_SHOOTABLE, EXPLOSION_STEP, EXPLOSION_CREATE,
	//SOUND EFFECTS
	SOUND_EXPLOSION, SOUND_SHOOT,
	//ULTIMATE
	ULTIMATE
}

//Weapon progress
current_cd = 0;
current_delay = -1;
current_recoil = 0;
current_reload = 0;
weapon_map = 0;

//Setup the default weapon type
scWeaponSet(argument0);