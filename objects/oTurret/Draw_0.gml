/// @description Insert description here
// You can write your code in this editor

if (turret_map == noone) exit;
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, placeable ? c_white : c_red, image_alpha);
draw_sprite_ext(turret_map[? TURRETS_MAP.SPRITE_HEAD], 0, x, y, image_xscale, image_yscale, direction, placeable ? c_white : c_red, image_alpha);

if (placing || scMouseHovering(bbox_left, bbox_top, bbox_right, bbox_bottom)) {
	scDrawCircle(x, y, turret_map[? TURRETS_MAP.RADIUS], c_ltgray, false, 0.4);
	with (target)
		scDrawLine(other.x, other.y, x, y, 1, c_white, 1);
}