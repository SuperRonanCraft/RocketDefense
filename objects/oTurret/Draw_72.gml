/// @description Insert description here
// You can write your code in this editor

if (first_draw) exit;

if (turret_map != noone) {
	sprite_index = turret_map[? TURRETS_MAP.SPRITE];
	script_execute(turret_map[? TURRETS_MAP.SCRIPT_CREATE]);
	first_draw = true;
}