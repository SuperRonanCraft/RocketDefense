/// @arg target
/// @arg radius
/// @arg target-type

var target = argument0, rad = argument1, targtype = argument2;

var shootingAt = noone;

//Rotate towards closest target
switch (targtype) {
	case TURRET_POINT.CLOSEST:
		shootingAt = instance_nearest(x, y, target);
		break;
	case TURRET_POINT.FARTHEST:
		var targs = ds_list_create();
		with (target)
			if (distance_to_point(other.x, other.y) <= rad)
			    ds_list_add(targs, id);
		if (!ds_list_empty(targs)) {
			var farthestdist = 0;
			for (var i = 0; i <= ds_list_size(targs); i++) {
				var enemy = ds_list_find_value(targs, i);
				var dist = distance_to_point(enemy.x, enemy.y);
			        //now if it's in mid-range, damage it again
			    if (dist > farthestdist) {shootingAt = enemy; farthestdist = dist;}
			}
		}
		ds_list_destroy(targs);
		break;
	case TURRET_POINT.HIGHEST:
		var targs = ds_list_create();
		with (target)
			if (distance_to_point(other.x, other.y) <= rad)
			    ds_list_add(targs, id);
		if (!ds_list_empty(targs)) {
			var highesthp = 0;
			for (var i = 0; i <= ds_list_size(targs); i++) {
				var enemy = ds_list_find_value(targs, i);
				var h = enemy.hp;
			        //now if it's in mid-range, damage it again
			    if (h > highesthp) {shootingAt = enemy; highesthp = h}
			}
		}
		ds_list_destroy(targs);
		break;
	case TURRET_POINT.LOWEST:
		var targs = ds_list_create();
		with (target)
			if (distance_to_point(other.x, other.y) <= rad)
			    ds_list_add(targs, id);
		if (!ds_list_empty(targs)) {
			var lowesthp = global.hp_enemy;
			for (var i = 0; i <= ds_list_size(targs); i++) {
				var enemy = ds_list_find_value(targs, i);
				var h = enemy.hp;
			        //now if it's in mid-range, damage it again
			    if (h < lowesthp) {shootingAt = enemy; lowesthp = h}
			}
			if (shootingAt == noone) shootingAt = instance_nearest(x, y, target);
		} 
		ds_list_destroy(targs);
		break;
}
return shootingAt;