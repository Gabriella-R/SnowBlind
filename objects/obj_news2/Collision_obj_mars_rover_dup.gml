/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 68DAC381
/// @DnDArgument : "code" "//diable the message if press f$(13_10)if(keyboard_check_pressed(ord("F")))$(13_10){$(13_10)	toggleSpot1 += 1;$(13_10)}$(13_10)$(13_10)toggleSpot1_f = true;"
//diable the message if press f
if(keyboard_check_pressed(ord("F")))
{
	toggleSpot1 += 1;
}

toggleSpot1_f = true;