/// @desc get all turrets map
var def = scTurretDefaults();

var val = TURRETS.CANNON;
turrets[val] = ds_map_create();
ds_map_copy(turrets[val], def);
ds_map_set(turrets[val], TURRETS_MAP.RADIUS, 75);
ds_map_set(turrets[val], TURRETS_MAP.COST, 50);
ds_map_set(turrets[val], TURRETS_MAP.SPRITE, sTurret1);
ds_map_set(turrets[val], TURRETS_MAP.WEAPON_SPEEDBUFF, 3);

val = TURRETS.MACHINE_GUN;
turrets[val] = ds_map_create();
ds_map_copy(turrets[val], def);
ds_map_set(turrets[val], TURRETS_MAP.RADIUS, 150);
ds_map_set(turrets[val], TURRETS_MAP.COST, 100);
ds_map_set(turrets[val], TURRETS_MAP.SPRITE, sTurret2);
ds_map_set(turrets[val], TURRETS_MAP.WEAPON_SPEEDBUFF, 2);
ds_map_set(turrets[val], TURRETS_MAP.WEAPON_DAMAGEBUFF, 3);

val = TURRETS.LASER;
turrets[val] = ds_map_create();
ds_map_copy(turrets[val], def);
ds_map_set(turrets[val], TURRETS_MAP.RADIUS, 150);
ds_map_set(turrets[val], TURRETS_MAP.COST, 100);
ds_map_set(turrets[val], TURRETS_MAP.SPRITE, sTurret2);

val = TURRETS.MACHINE_GUN;
turrets[val] = ds_map_create();
ds_map_copy(turrets[val], def);
ds_map_set(turrets[val], TURRETS_MAP.RADIUS, 150);
ds_map_set(turrets[val], TURRETS_MAP.COST, 100);
ds_map_set(turrets[val], TURRETS_MAP.SPRITE, sTurret2);

enum TURRETS {
	CANNON, MACHINE_GUN, LASER, 
	
	//Keep last
	LENGTH
}

enum TURRETS_MAP {
	RADIUS, COST, WEAPON, WEAPON_SPEEDBUFF, WEAPON_DAMAGEBUFF,
	//SPRITES
	SPRITE, SPRITE_HEAD,
	//SCRIPTS
	SCRIPT_CREATE, SCRIPT_AIMING, SCRIPT_IDLE
}