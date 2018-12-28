/// @arg instance
/// @arg target
/// @arg turnspeed
/// @arg accuracy
/// @arg weapon-speed

var objToTurn = argument0, target = argument1, turnSpeed = argument2, accuracy = abs(clamp(argument3, 0.05, 0.95) - 1.0), wpSpd = argument4;
var x1 = objToTurn.x, y1 = objToTurn.y, x2 = target.x, y2 = target.y;
var inter = point_distance(x1, y1, x2, y2) / wpSpd;
//x2 = lerp(x2, x2 + target.path_speed, inter);
//y2 = lerp(y2, y2 + lengthdir_y(target.path_speed, path_get), inter);
var targetDir = point_direction(x1, y1, x2, y2);
var facingDir = objToTurn.direction;
var angleDiff = facingDir - targetDir;

if (abs(angleDiff) > 180) {
    if (facingDir > targetDir) 
        angleDiff = -1 * ((360 - facingDir) + targetDir);
    else
        angleDiff = (360 - targetDir) + facingDir;
}

if (angleDiff > 30 * accuracy)
    objToTurn.direction -= turnSpeed;
else if (angleDiff < 30 * accuracy)
    objToTurn.direction += turnSpeed;