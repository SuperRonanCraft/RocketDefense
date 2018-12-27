/// @arg instance
/// @arg target-dir
/// @arg turnspeed
/// @arg accuracy

var objToTurn = argument0, targetDir = argument1, turnSpeed = argument2, accuracy = abs(clamp(argument3, 0.05, 0.95) - 1.0);
var facingDir = objToTurn.direction;
var angleDiff = facingDir - targetDir;

if (abs(angleDiff) > 180) {
    if (facingDir > targetDir) 
        angleDiff = -1 * ((360 - facingDir) + targetDir);
    else
        angleDiff = (360 - targetDir) + facingDir;
}

if (angleDiff > accuracy)
    objToTurn.direction -= turnSpeed;
else if(angleDiff < accuracy)
    objToTurn.direction += turnSpeed;