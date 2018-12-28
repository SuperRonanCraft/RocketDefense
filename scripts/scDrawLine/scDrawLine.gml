/// @arg x1
/// @arg y1
/// @arg x2
/// @arg y2
/// @arg width
/// @arg alpha

var x1 = argument0, y1 = argument1, x2 = argument2, y2 = argument3;
var width = argument4, alpha = argument5;

draw_set_alpha(alpha);
draw_line_width(x1, y1, x2, y2, width);
draw_set_alpha(1);