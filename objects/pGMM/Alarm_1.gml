/// @desc New wave
if (instance_number(oEnemy) <= 0) {
	spawn_count = 0;
	spawn_amount++;
	global.level++;
	global.spd += 0.1;
	global.hp += 10;
	spawn_rate -= 2.5;
	alarm[0] = spawn_rate;
}
alarm[1] = 5 * room_speed;