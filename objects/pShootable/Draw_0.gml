/// @desc draw hp

draw_self();
//Display health
draw_healthbar(x - 20, bbox_bottom, x + 20, bbox_bottom + 4, (hp / hp_original) * 100, c_black, c_red, c_green, 0, true, true);