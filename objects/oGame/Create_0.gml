global.key_faster = ord("S");
global.key_slower = ord("A");

//The resolution the game will run at
#macro RES_W 1024
#macro RES_H 768
#macro GRID_SIZE 32

changeres = true;

//Pausing
//Screenshot of all sprites before disabling them
background = noone;
global.pause = false;

global.coins = 1000; //Coins the player has
global.grid_snap = true; //Snap turrets to grid?

//Stages
//Set on every StageSelect room
global.stages = -1;
//Saved after a stage is selected to play
global.stage_selected = -1;
global.play = false;

//Other
global.vol_master = 1;
global.vol_music = 0.5;
global.vol_sounds = 1;
global.fullscreen = false;

//Randomize gameplay
randomize();

draw_set_font(fPixel);