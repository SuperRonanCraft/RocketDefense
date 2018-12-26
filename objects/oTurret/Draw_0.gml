/// @description Insert description here
// You can write your code in this editor

if (turret_map == noone) exit;
if (scMouseHovering(x, y, sprite_width / 2, sprite_height / 2))
	draw_circle(x, y, turret_map[? TURRETS_MAP.RADIUS], true);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, placeable ? c_white : c_red, image_alpha);