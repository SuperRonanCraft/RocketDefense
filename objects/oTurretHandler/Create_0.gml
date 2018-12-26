/// @desc gui system for buying turrets

turrets_x = RES_W - 50;
turrets_y = 50;
turrets_offset = 64;
turrets_option = 0;
turrets_height = 32;
turrets_length = 32;
turrets_placing = false;

mouse_x_old = device_mouse_x_to_gui(0);
mouse_y_old = device_mouse_y_to_gui(0);

var val = TURRETS.CANNON;
turrets[val] = ds_map_create();
ds_map_add(turrets[val], TURRETS_MAP.RADIUS, 50);
ds_map_add(turrets[val], TURRETS_MAP.COST, 50);
ds_map_add(turrets[val], TURRETS_MAP.SPRITE, sTurret1);
ds_map_add(turrets[val], TURRETS_MAP.WEAPON, WEAPON.DEFAULT);

val = TURRETS.LASER;
turrets[val] = ds_map_create();
ds_map_add(turrets[val], TURRETS_MAP.RADIUS, 150);
ds_map_add(turrets[val], TURRETS_MAP.COST, 100);
ds_map_add(turrets[val], TURRETS_MAP.SPRITE, sTurret2);
ds_map_add(turrets[val], TURRETS_MAP.WEAPON, WEAPON.DEFAULT);

/*enum TURRETS {
	CANNON, LASER,
	
	//Keep last
	LENGTH
}

enum TURRETS_MAP {
	RADIUS, COST, SPRITE, WEAPON,
	//SCRIPTS
	SCRIPT_STEP
}