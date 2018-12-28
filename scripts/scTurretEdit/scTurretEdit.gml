/// @arg turret-id
with(pGMM) { 
	turrets_editting = argument0;
	display = DISPLAY_TYPE.EDITTING;
}
	
enum TURRET_POINT {
	CLOSEST, FARTHEST, LOWEST, HIGHEST
}