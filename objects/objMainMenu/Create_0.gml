/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 382B5346
/// @DnDArgument : "code" "// Main Menu variables$(13_10)$(13_10)mainMenuX = 670;$(13_10)mainMenuY = 500;$(13_10)$(13_10)// How big the menu items are so they're spaced apart correctly$(13_10)buttonH = 32;$(13_10)$(13_10)$(13_10)// Button names and array $(13_10)button[0] = "Play Game";$(13_10)button[1] = "Instructions";$(13_10)button[2] = "Quit Game";$(13_10)$(13_10)// Store amount of buttons $(13_10)buttons = array_length_1d(button);$(13_10)$(13_10)// Stores menu location$(13_10)menuIndex = 0;$(13_10)lastSelected = 0;$(13_10)$(13_10)// Plays Appropriate BGM$(13_10)if(!audio_is_playing(bgm_menu__theme_loop_))$(13_10){$(13_10)	audio_play_sound(bgm_menu__theme_loop_,1,true);$(13_10)}"
// Main Menu variables

mainMenuX = 670;
mainMenuY = 500;

// How big the menu items are so they're spaced apart correctly
buttonH = 32;


// Button names and array 
button[0] = "Play Game";
button[1] = "Instructions";
button[2] = "Quit Game";

// Store amount of buttons 
buttons = array_length_1d(button);

// Stores menu location
menuIndex = 0;
lastSelected = 0;

// Plays Appropriate BGM
if(!audio_is_playing(bgm_menu__theme_loop_))
{
	audio_play_sound(bgm_menu__theme_loop_,1,true);
}