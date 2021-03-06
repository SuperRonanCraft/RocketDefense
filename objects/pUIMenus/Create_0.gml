event_inherited();
//Default Menus
ds_settings = scUICreateMenuPage(
	["AUDIO",			menu_element_type.page_transfer,	menu_page.audio],
	["GRAPHICS",		menu_element_type.page_transfer,	menu_page.graphics],
	["KEYBINDS",		menu_element_type.page_transfer,	menu_page.keybinds],
	["BACK",			menu_element_type.page_transfer,	menu_page.main],
);

ds_menu_audio = scUICreateMenuPage(
	//["MASTER",			menu_element_type.slider,			scUIChangeVolume,		"vol_master",	global.vol_master],
	//["SOUNDS",			menu_element_type.slider,			scUIChangeVolume,		"vol_sounds",	global.vol_sounds],
	//["MUSIC",			menu_element_type.slider,			scUIChangeVolume,		"vol_music",	global.vol_music],
	["BACK",			menu_element_type.page_transfer,	menu_page.settings],
);

ds_menu_graphics = scUICreateMenuPage(
	//["FULLSCREEN",		menu_element_type.toggle,			scUIToggleFullscreen,	"fullscreen",	global.fullscreen],
	["BACK",			menu_element_type.page_transfer,	menu_page.settings],
);

ds_menu_keybinds = scUICreateMenuPage(
	//["JUMP P1",			menu_element_type.input,			"key_p1_jump",		global.key_p1_jump],
	//["RESET KEYS",		menu_element_type.script_runner,	scUIResetKeybinds],
	["BACK",			menu_element_type.page_transfer,	menu_page.settings],
);