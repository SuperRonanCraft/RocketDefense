/// @desc Explosion
if (weapon_map[? WEAPON_MAP.EXPLOSION_SPRITE] == noone) {instance_destroy(); exit;}
var xplo = instance_create_depth(x, y, 10, oExplosion);
xplo.sprite_index = weapon_map[? WEAPON_MAP.EXPLOSION_SPRITE];
xplo.parent = owner;
ds_map_copy(xplo.weapon_map, weapon_map);
ds_list_copy(xplo.confirmList, hitList);
///var part = weapon_map[? WEAPON_MAP.PARTICLE_EXPLOSION];
//All variables before this should be standard for all rockets. The one difference typically lies here:
//xplo.stepScript = scRocketSpecialIce_ExplosionStep;
//This script describes how the explosion behaves. It is essential, otherwise it will not do anything.
//Check the above script for more details.

//Particle explosion to look pretty.
/*if (part != noone) {
	part_emitter_region(global.ParticleSystem1, global.Emitter1, x - (1*30), x + (1*30), y - (1*10), y + (1*10), ps_shape_ellipse, ps_distr_gaussian)
	part_emitter_burst(global.ParticleSystem1, global.Emitter1, part, 15*1);
}*/
//scScreenShake(rocket_map[? ROCKET_MAP.SHAKE_MAGNITUDE], rocket_map[? ROCKET_MAP.SHAKE_FRAMES]);
//Delete this instance of oRocket

destroy = true;

//Do something special if no rocket/shootable or wall event for a rocket, do something with just the explosion
//giving it an instance of the explosion
if (weapon_map[? WEAPON_MAP.EXPLOSION_CREATE] != noone)
	script_execute(weapon_map[? WEAPON_MAP.EXPLOSION_CREATE], xplo);
//scPlaySound(rocket_map[? WEAPON_MAP.SOUND_EXPLOSION]);