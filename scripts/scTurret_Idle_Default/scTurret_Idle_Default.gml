
if (abs(turret_custom[? "idle_dirtarget"] - direction) >= 1) {
	var target = turret_custom[? "idle_dirtarget"];
	scRotateToDirection(id, target, 2, 1);
} else{
	if (turret_custom[? "idle_timer"] < 120)
		turret_custom[? "idle_timer"]++;
	else {
		turret_custom[? "idle_dirtarget"] = irandom_range(direction - 50, direction + 50);
		turret_custom[? "idle_timer"] = 0;
	}
}