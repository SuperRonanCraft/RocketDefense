if (global.pause) {
	event_inherited();
} else if (checked) { //Unpaused
	page = 0; //Reset the page
	//Reset page options
	for (var i = 0; i < array_length_1d(menu_pages); i++)
		menu_option[i] = 0;
	event_user(2); //Update keybinds
	checked = false; //Make it check its global vars when paused again
}
