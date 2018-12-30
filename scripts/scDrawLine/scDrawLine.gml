/// @arg x1
/// @arg y1
/// @arg x2
/// @arg y2
/// @arg width
/// @arg color
/// @arg alpha

var x1 = argument0, y1 = argument1, x2 = argument2, y2 = argument3;
var width = argument4, color = argument5, alpha = argument6;

draw_set_alpha(alpha);
draw_line_width_color(x1, y1, x2, y2, width, color, color);
draw_set_alpha(1);