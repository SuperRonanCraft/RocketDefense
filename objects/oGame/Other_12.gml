/// @desc Pause
SlideTransition(TRANS_MODE.PAUSE);
background = sprite_create_from_surface(application_surface, 0, 0, RES_W, RES_H, false, false, 0, 0);
instance_deactivate_all(true);
instance_activate_object(oTransition);
instance_activate_object(oUIPause);
//instance_activate_object(oMusic);
global.pause = true;