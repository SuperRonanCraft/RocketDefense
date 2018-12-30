/// @desc every second execute this

coins_image_current++;
if (coins_image_current >= coins_image_amt)
	coins_image_current = 0;
alarm[2] = coins_image_spd;