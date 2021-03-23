/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 21979A0D
/// @DnDArgument : "code" "// Brings the user to the appropriate room based on button choice, or quits the game$(13_10)$(13_10)switch(menuIndex)$(13_10){$(13_10)	case 0:$(13_10)		room_goto(rmGameRoom);$(13_10)		break;$(13_10)		$(13_10)	case 1:$(13_10)		room_goto(rmMainMenu);$(13_10)		break;$(13_10)	$(13_10)	case 2:$(13_10)		game_end();$(13_10)		break;$(13_10)}"
// Brings the user to the appropriate room based on button choice, or quits the game

switch(menuIndex)
{
	case 0:
		room_goto(rmGameRoom);
		break;
		
	case 1:
		room_goto(rmMainMenu);
		break;
	
	case 2:
		game_end();
		break;
}