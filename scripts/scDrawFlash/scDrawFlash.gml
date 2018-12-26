/// @desc flash an object white
/// @arg flash value;
//draw_self();
if (argument0 > 0) {
	shader_set(shFlash);
	draw_self();
	show_debug_message("FLASH" + string(flash));
	shader_reset();
	return argument0 - 1;
} else
	return argument0;