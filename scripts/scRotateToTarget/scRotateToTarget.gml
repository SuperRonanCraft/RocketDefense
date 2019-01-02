/// @arg instance
/// @arg target
/// @arg turnspeed
/// @arg weapon-speed

var objToTurn = argument0, target = argument1, wpSpd = argument2;
var x1 = objToTurn.x, y1 = objToTurn.y, x2 = target.x, y2 = target.y;

//Predict Enemy pos
/*var traveltime = point_distance(x1, y1, x2, y2) / wpSpd; //Travel time from current enemy x/y
var path = target.path_index; //Path index
var pathlen = path_get_length(path); //Path length
var pathpro = target.path_position; //Path progress
var pathdis = pathlen * pathpro; //Path traveled amount
var pathdisfut = pathdis + (target.path_speed * traveltime); //Path distance future
var pathprofut = pathdisfut / pathlen; //Path progress future*/

//show_debug_message(string(pathlen));
//show_debug_message(string(pathdis));
//show_debug_message(string(pathdisfut));

//x2 = path_get_x(path, pathprofut); //Future enemy x
//y2 = path_get_y(path, pathprofut); //Future enemy y

//show_debug_message("-----------");

var targetDir = point_direction(x1, y1, x2, y2);
//var facingDir = objToTurn.direction;
//var angleDiff = facingDir - targetDir;

/*if (abs(angleDiff) > 180) {
    if (facingDir > targetDir) 
        angleDiff = -1 * ((360 - facingDir) + targetDir);
    else
        angleDiff = (360 - targetDir) + facingDir;
}*/

objToTurn.direction = targetDir;
/*
if (angleDiff > 0)
    objToTurn.direction -= turnSpeed;
else if (angleDiff < 0)
    objToTurn.direction += turnSpeed;