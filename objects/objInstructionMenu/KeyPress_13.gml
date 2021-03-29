/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 21979A0D
/// @DnDArgument : "code" "// Brings the user to the appropriate room based on button choice, or quits the game.$(13_10)// Also, plays selection SFX.$(13_10)audio_play_sound(sfx_menu_select__load_,2,false);$(13_10)$(13_10)switch(menuIndex)$(13_10){$(13_10)	case 0:$(13_10)	    // Stops menu audio, and redirects to game area 1.$(13_10)	    if(audio_is_playing(bgm_menu__theme_loop_))$(13_10)		{$(13_10)			audio_stop_sound(bgm_menu__theme_loop_);$(13_10)		}$(13_10)		room_goto(rmGameRoom);$(13_10)		break;$(13_10)		$(13_10)	case 1:$(13_10)		room_goto(rmMainMenu);$(13_10)		break;$(13_10)	$(13_10)	case 2:$(13_10)		game_end();$(13_10)		break;$(13_10)}"
// Brings the user to the appropriate room based on button choice, or quits the game.
// Also, plays selection SFX.
audio_play_sound(sfx_menu_select__load_,2,false);

switch(menuIndex)
{
	case 0:
	    // Stops menu audio, and redirects to game area 1.
	    if(audio_is_playing(bgm_menu__theme_loop_))
		{
			audio_stop_sound(bgm_menu__theme_loop_);
		}
		room_goto(rmGameRoom);
		break;
		
	case 1:
		room_goto(rmMainMenu);
		break;
	
	case 2:
		game_end();
		break;
}