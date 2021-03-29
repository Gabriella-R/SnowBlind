/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0E305385
/// @DnDArgument : "code" "// Track menu movement $(13_10)menuMove = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);$(13_10)if(menuMove != 0)$(13_10){$(13_10)	audio_play_sound(sfx_menu_pan__click_,2,false);$(13_10)}$(13_10)menuIndex += menuMove;$(13_10)$(13_10)// Checks for beginning and end of menu$(13_10)if(menuIndex < 0)$(13_10){$(13_10)	menuIndex = buttons - 1;$(13_10)}$(13_10)$(13_10)if(menuIndex > buttons - 1)$(13_10){ $(13_10)	menuIndex = 0;$(13_10)}$(13_10)$(13_10)// Update last selected $(13_10)lastSelected = menuIndex;"
// Track menu movement 
menuMove = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
if(menuMove != 0)
{
	audio_play_sound(sfx_menu_pan__click_,2,false);
}
menuIndex += menuMove;

// Checks for beginning and end of menu
if(menuIndex < 0)
{
	menuIndex = buttons - 1;
}

if(menuIndex > buttons - 1)
{ 
	menuIndex = 0;
}

// Update last selected 
lastSelected = menuIndex;