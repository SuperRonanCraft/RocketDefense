/// @arg instance
/// @arg target
/// @arg weapon-speed

var objToMove = argument0, target = argument1, wpSpd = argument2;
var path = target.path_index;

var pathlen = path_get_length(path);

var _faralong = target.path_position
var _dist = point_distance(objToMove.x, objToMove.y, target.x, target.y)
	
var _timeenemycompletion = ((1 - _faralong) * pathlen) / target.path_speed;
	
var _wcs = _dist / (wpSpd - target.path_speed)
	
var _possible = _wcs < _timeenemycompletion;
	
if (_possible) {
	var _pointafterwcs = (_faralong * pathlen + _wcs * pathlen) / pathlen + 0.1
     
   var _pointpathdist = (_pointafterwcs - _faralong) * pathlen
   var _enemystepstoreach = _pointpathdist / target.path_speed
   var _bullettraveldist = point_distance(objToMove.x, objToMove.y, _xx, _yy)

   var _delay = _enemystepstoreach - _bullettraveldist / wpSpd
   _pointafterwcs +=  _delay * target.path_speed / pathlen;
     
   var _xx = path_get_x(path, _pointafterwcs)
   var _yy = path_get_y(path, _pointafterwcs)
   
   objToMove.direction = point_direction(objToMove.x, objToMove.y, _xx, _yy);
}
	/*var _pointafterwcs = (_faralong * pathlen + _wcs * pathlen) / pathlen + 0.1
		
	//var _pointpathdist = (_pointafterwcs - _faralong) * pathlen
	//var _enemystepstoreach = _pointpathdist / target.path_speed
		
	var _xx = path_get_x(path, _pointafterwcs)
	var _yy = path_get_y(path, _pointafterwcs)
	
	objToMove.direction = point_direction(objToMove.x, objToMove.y, _xx, _yy);
		
	//var _bullettraveldist = point_distance(x, y, _xx, _yy)
	//_delay = _enemystepstoreach - _bullettraveldist / wpSpd
}