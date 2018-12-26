weapon_map = ds_map_create();
weapon_map[? WEAPON_MAP.RECOIL] = 0; //Amount of recoil to push the player back
weapon_map[? WEAPON_MAP.PROJECTILE] = WEAPON_SPRITE.NONE; //Sprite to show
weapon_map[? WEAPON_MAP.COOLDOWN] = 0; //Cooldown between shots
weapon_map[? WEAPON_MAP.SPEED] = 0; //Speed of rocket
weapon_map[? WEAPON_MAP.OFFSET] = 30; //offset to spawn the rocket
weapon_map[? WEAPON_MAP.STARTUP] = 0; //Delay between clicking the shoot key and launching
weapon_map[? WEAPON_MAP.CLIP] = -1; //How much 
weapon_map[? WEAPON_MAP.RELOAD_TIME] = -1; //Reload time
weapon_map[? WEAPON_MAP.TIMER] = -1; //Up-time
weapon_map[? WEAPON_MAP.IGNORE_WALL] = false; //allow wall clipping
weapon_map[? WEAPON_MAP.NAME] = "default"; //Name of rocket (must have)
weapon_map[? WEAPON_MAP.DESCRIPTION] = "Uh... Nothing?"; //Description of rocket (must have)
weapon_map[? WEAPON_MAP.TYPE] = WEAPON.NONE; //Rocket type (must have)
weapon_map[? WEAPON_MAP.BUFF] = noone; //The buffs a rocket has (array)
//DAMAGES
weapon_map[? WEAPON_MAP.DAMAGE] = 1; //Base damage
weapon_map[? WEAPON_MAP.DAMAGE_DIRECT] = 0; //Damage by direct rocket
weapon_map[? WEAPON_MAP.DAMAGE_EXPLOSION] = 0; //Damage by explosion splash
//ROCKET EVENTS
weapon_map[? WEAPON_MAP.WEAPON_CREATE] = noone; //Event when a rocket is created (adds)
weapon_map[? WEAPON_MAP.WEAPON_STEP] = noone; //Step event (overrides movement)
weapon_map[? WEAPON_MAP.WEAPON_DRAW] = noone; //Draw event for rockets (adds)
//PARTICLES
weapon_map[? WEAPON_MAP.PARTICLE_TRAIL] = noone; //rocket particle trail
weapon_map[? WEAPON_MAP.PARTICLE_EXPLOSION] = noone; //Explosion particle
weapon_map[? WEAPON_MAP.PARTICLE_AMT] = 1; //rocket particle trail
//EXPLOSIONS
weapon_map[? WEAPON_MAP.EXPLOSION_SPRITE] = noone; //Sprite of explosion
weapon_map[? WEAPON_MAP.EXPLOSION_CREATE] = noone; //Only if no event for rocket, wall or shootable
weapon_map[? WEAPON_MAP.EXPLOSION_ROCKET] = noone; //Explosion with a rocket
weapon_map[? WEAPON_MAP.EXPLOSION_WALL] = noone; //Explosion with a wall
weapon_map[? WEAPON_MAP.EXPLOSION_SHOOTABLE] = noone; //Explosion with a shootable
weapon_map[? WEAPON_MAP.EXPLOSION_STEP] = noone; //Explosion step event
//SOUNDS
//weapon_map[? WEAPON_MAP.SOUND_SHOOT] = SOUND.EFFECT_SHOOT; //Rocket shoot sound
//weapon_map[? WEAPON_MAP.SOUND_EXPLOSION] = SOUND.EFFECT_EXP; //Rocket explode sound
//ULTIMATE
//weapon_map[? WEAPON_MAP.ULTIMATE] = ULTIMATE.DEFAULT;