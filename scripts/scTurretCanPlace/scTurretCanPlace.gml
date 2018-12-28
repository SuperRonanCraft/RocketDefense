/// @arg turret-cost
var cost = argument0;
if (global.coins >= cost) {
	global.coins -= cost;
	return true;
}
return false;