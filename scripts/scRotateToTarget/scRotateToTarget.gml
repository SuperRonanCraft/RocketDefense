/// @arg instance
/// @arg target
/// @arg turnspeed
/// @arg accuracy

var objToTurn = argument0, target = argument1, turnSpeed = argument2, accuracy = abs(clamp(argument3, 0.05, 0.95) - 1.0);
var targetDir = point_direction(objToTurn.x, objToTurn.y, target.x, target.y);
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