/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5C7769AC
/// @DnDArgument : "code" "event_inherited();$(13_10)$(13_10)$(13_10)//diable the message if press f$(13_10)if(keyboard_check_pressed(ord("F")))$(13_10){$(13_10)	toggleSpot1 += 1;$(13_10)}$(13_10)"
event_inherited();


//diable the message if press f
if(keyboard_check_pressed(ord("F")))
{
	toggleSpot1 += 1;
}