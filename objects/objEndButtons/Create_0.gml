/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 382B5346
/// @DnDArgument : "code" "// Instruction Menu variables$(13_10)$(13_10)mainMenuX = 1300;$(13_10)mainMenuY = 650;$(13_10)$(13_10)// How big the menu items are so they're spaced apart correctly$(13_10)buttonH = 32;$(13_10)$(13_10)$(13_10)// Button names and array $(13_10)button[0] = "Back to Main Menu";$(13_10)button[1] = "Quit Game";$(13_10)$(13_10)// Store amount of buttons $(13_10)buttons = array_length_1d(button);$(13_10)$(13_10)// Stores menu location$(13_10)menuIndex = 0;$(13_10)lastSelected = 0;$(13_10)$(13_10)// Plays game end music and ending SFX$(13_10)if(!audio_is_playing(sfx_game_end__misc_sound_))$(13_10){$(13_10)	audio_play_sound(sfx_game_end__misc_sound_,2,false);$(13_10)}$(13_10)$(13_10)if(!audio_is_playing(bgm_area1__Sindwiller___Snow_May_Never_End_v2___ccbysa3_))$(13_10){$(13_10)	audio_play_sound(bgm_area1__Sindwiller___Snow_May_Never_End_v2___ccbysa3_,1,true);$(13_10)}"
// Instruction Menu variables

mainMenuX = 1300;
mainMenuY = 650;

// How big the menu items are so they're spaced apart correctly
buttonH = 32;


// Button names and array 
button[0] = "Back to Main Menu";
button[1] = "Quit Game";

// Store amount of buttons 
buttons = array_length_1d(button);

// Stores menu location
menuIndex = 0;
lastSelected = 0;

// Plays game end music and ending SFX
if(!audio_is_playing(sfx_game_end__misc_sound_))
{
	audio_play_sound(sfx_game_end__misc_sound_,2,false);
}

if(!audio_is_playing(bgm_area1__Sindwiller___Snow_May_Never_End_v2___ccbysa3_))
{
	audio_play_sound(bgm_area1__Sindwiller___Snow_May_Never_End_v2___ccbysa3_,1,true);
}