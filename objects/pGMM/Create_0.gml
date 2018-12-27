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

button = [0, RES_H - 30, 50, RES_H]; //x1, y1, x2, y2 OPEN THE MENU

display = DISPLAY_TYPE.CLOSED;
enum DISPLAY_TYPE {
	OPEN, CLOSED, EDITTING
}

/// @desc gui system for buying turrets

ui[DISPLAY_TYPE.CLOSED] = [0, RES_H - 30, RES_W, RES_H]; //x1, y1, x2, y2 OPEN THE MENU
ui[DISPLAY_TYPE.OPEN] = [0, RES_H - 120, RES_W, RES_H]; //x1, y1, x2, y2 CLOSE THE MENU

turrets_x = RES_W - 50;
turrets_y = RES_H - 75;
turrets_offset = 64;
turrets_option = 0;
turrets_height = 32;
turrets_length = 32;
turrets_placing = false;

mouse_x_old = device_mouse_x_to_gui(0);
mouse_y_old = device_mouse_y_to_gui(0);

scTurretGet();