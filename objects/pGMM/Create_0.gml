/// @desc Gamemode has started
spawn_amount = 5;
spawn_count = 0;
spawn_rate = 1 * room_speed;
alarm[0] = 1;
alarm[1] = room_speed * 5;

global.hp = 100;
global.hp_enemy = 10;
global.spd = 1;
global.level = 1;

ui_ybuffer = 5;
ui_xbuffer = 10;
ui_font_scale = 0.4;
ui_font_height = font_get_size(draw_get_font()) * ui_font_scale;
text_snap = "SNAP TO GRID";

display = DISPLAY_TYPE.NORMAL;
enum DISPLAY_TYPE {
	NORMAL, EDITTING
}

/// @desc gui system for buying turrets
coins_sprite = sCoins;
coins_sprite_width = sprite_get_width(coins_sprite);
coins_image_amt = sprite_get_number(coins_sprite);
coins_image_current = 0;
coins_image_spd = sprite_get_speed(coins_sprite);
alarm[2] = coins_image_spd; //Update coins image index

health_sprite = sHealth;
health_sprite_width = sprite_get_width(health_sprite);
health_scale = 1;
health_barlen = 100;

ui_height_top = ui_ybuffer;
ui_height_bottom = RES_H - ui_ybuffer;
ui_width_start = RES_W - ui_xbuffer;
ui_width = 256 - ui_xbuffer;

turrets_title = "TURRETS";
turrets_x = RES_W - 50;
turrets_y = 50;
turrets_offset = 64;
turrets_option = 0;
turrets_height = 32;
turrets_length = 32;
turrets_placing = false;
turrets_editting = noone;

mouse_x_old = device_mouse_x_to_gui(0);
mouse_y_old = device_mouse_y_to_gui(0);

scTurretStart();