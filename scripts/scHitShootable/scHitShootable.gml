/// @desc Hit a shootable
/// @arg shootable-instance
/// @arg shooter-instance
/// @arg damage

with (argument[0])
	if (argument[1] != id && argument[2] > 0) {
		hp -= argument[2];
		flash = 20;
		//scPlaySound(SOUND.EFFECT_HIT);
		shot_last = 3 * room_speed;
		if (hp <= 0)
			instance_destroy();
	}