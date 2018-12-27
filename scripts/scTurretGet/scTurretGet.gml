/// @desc get all turrets map

var val = TURRETS.CANNON;
turrets[val] = ds_map_create();
ds_map_add(turrets[val], TURRETS_MAP.RADIUS, 50);
ds_map_add(turrets[val], TURRETS_MAP.COST, 50);
ds_map_add(turrets[val], TURRETS_MAP.SPRITE, sTurret1);
ds_map_add(turrets[val], TURRETS_MAP.WEAPON, WEAPON.DEFAULT);
ds_map_add(turrets[val], TURRETS_MAP.WEAPON_SPEEDBUFF, 3);
ds_map_add(turrets[val], TURRETS_MAP.WEAPON_DAMAGEBUFF, 1);

val = TURRETS.MACHINE_GUN;
turrets[val] = ds_map_create();
ds_map_add(turrets[val], TURRETS_MAP.RADIUS, 150);
ds_map_add(turrets[val], TURRETS_MAP.COST, 100);
ds_map_add(turrets[val], TURRETS_MAP.SPRITE, sTurret2);
ds_map_add(turrets[val], TURRETS_MAP.WEAPON, WEAPON.DEFAULT);
ds_map_add(turrets[val], TURRETS_MAP.WEAPON_SPEEDBUFF, 2);
ds_map_add(turrets[val], TURRETS_MAP.WEAPON_DAMAGEBUFF, 3);

enum TURRETS {
	CANNON, MACHINE_GUN,
	
	//Keep last
	LENGTH
}

enum TURRETS_MAP {
	RADIUS, COST, SPRITE, WEAPON, WEAPON_SPEEDBUFF, WEAPON_DAMAGEBUFF,
	//SCRIPTS
	SCRIPT_STEP
}