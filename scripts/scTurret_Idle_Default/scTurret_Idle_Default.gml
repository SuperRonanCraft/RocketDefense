
if (turret_custom[? "idle_dirtarget"] != direction) {
	var target = turret_custom[? "idle_dirtarget"];
	scRotateToDirection(id, target, 1, 1);
} else {
	if (turret_custom[? "idle_timer"] < 120)
		turret_custom[? "idle_timer"]++;
	else {
		turret_custom[? "idle_dirtarget"] = direction + irandom_range(-50, 50);
		turret_custom[? "idle_timer"] = 0;
	}
}