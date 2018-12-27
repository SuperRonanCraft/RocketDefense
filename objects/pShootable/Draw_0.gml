/// @desc draw hp

draw_self();
//Display health
if (shot_last > 0) {
	shot_last--;
	draw_healthbar(x - 12, bbox_top - 4, x + 12, bbox_top - 2, (hp / hp_original) * 100, c_black, c_red, c_lime, 0, true, true);
}