//A whole map list of what a rocket has
weapon_map = 0;
//Who shot this rocket
owner = noone;
//Maximum up-time
timer = 100;
//Size of explosion
size = 1;
//Destroy variable for explosions
destroy = false;
//What this rocket has his, add it to its explosion
hitList = ds_list_create();
confirmList = ds_list_create();

//Timing variables for first step and draw event
first_step = false;
first_draw = false;