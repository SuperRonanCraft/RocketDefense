event_inherited();

ds_menu_main = scUICreateMenuPage(
	["PLAY",		menu_element_type.goto_room,	rLevel1],
	["SETTINGS",	menu_element_type.page_transfer,	menu_page.settings],
	//["INFO",		menu_element_type.page_transfer,	menu_page.info],
	["QUIT",		menu_element_type.page_transfer,	menu_page.confirm],
);

ds_confirm = scUICreateMenuPage(
	//["CONFIRM",		menu_element_type.script_runner,	scUIQuitGame, "Are you sure?"], //Only script that has text input
	["CANCEL",		menu_element_type.page_transfer,	menu_page.main],
);

//Pages of the menu
menu_pages = [ds_menu_main, ds_settings, ds_menu_audio, ds_menu_graphics,
	ds_menu_keybinds, ds_confirm];
//The page index values (must be in order)
menu_pages_index = [menu_page.main, menu_page.settings, menu_page.audio, menu_page.graphics,
	menu_page.keybinds, menu_page.confirm];
//Pages that are centered and have no input side
menu_pages_centered = [ds_menu_main, ds_settings, ds_confirm];

//Ignore specific menu elements from being selected
menu_special = [noone];
menu_special_start_y = [noone];

for (var i = 0; i < array_length_1d(menu_pages); i++)
	for (var a = 0; a < array_length_1d(menu_special); a++) {
		var ds_grid = menu_pages[i];
		if (ds_grid[# 1, 0] == menu_special[a]) menu_option[i] = 1; //Default selection for each special page
		else menu_option[i] = 0; //Default selection for each page
	}
menu_option[page] = -1; //Default main page is -1 for the animation phase

//Unfolding animation
unfolding = false;
for (var i = 0; i < ds_grid_height(menu_pages[menu_page.main]); i++)
	unfold[i] = 0; //Position multiplier of page text