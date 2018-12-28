var map = ds_map_create();
map[? TURRETS_MAP.RADIUS] = 100; //Default turrets radius
map[? TURRETS_MAP.COST] = 100; //Default turrets price
//SPRITES
map[? TURRETS_MAP.SPRITE] = sTurret1; //Default turrets sprite
map[? TURRETS_MAP.SPRITE_HEAD] = sTurret_Head1; //Default turrets sprite
//WEAPON
map[? TURRETS_MAP.WEAPON] = WEAPON.DEFAULT; //Turrets weapon
map[? TURRETS_MAP.WEAPON_SPEEDBUFF] = 1; //Turrets weapon speed buff
map[? TURRETS_MAP.WEAPON_DAMAGEBUFF] = 1; //Turrets weapon damage buff
//SCRIPTS
map[? TURRETS_MAP.SCRIPT_CREATE] = scTurret_Create_Default; //Create script (replace)
map[? TURRETS_MAP.SCRIPT_AIMING] = scTurret_Aiming_Default; //Aim script (replace)
map[? TURRETS_MAP.SCRIPT_IDLE] = scTurret_Idle_Default; //Idle script (replace)
return map;