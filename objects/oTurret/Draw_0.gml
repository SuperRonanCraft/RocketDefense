/// @description Insert description here
// You can write your code in this editor

if (turret_map == noone) exit;
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, placeable ? c_white : c_red, image_alpha);
draw_sprite_ext(turret_map[? TURRETS_MAP.SPRITE_HEAD], 0, x, y, image_xscale, image_yscale, direction, placeable ? c_white : c_red, image_alpha);

if (scMouseHovering(bbox_left, bbox_top, bbox_right, bbox_bottom)) {
	draw_circle(x, y, turret_map[? TURRETS_MAP.RADIUS], true);
	if (mouse_check_button_pressed(mb_left))
		scTurretEdit(id);
}