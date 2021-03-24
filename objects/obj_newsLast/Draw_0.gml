/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 78D2A4FB
/// @DnDArgument : "code" "$(13_10)	$(13_10)	$(13_10)	$(13_10)$(13_10)//display press f, when nearby$(13_10)if(place_meeting(x,y,objCharacter) > 0)$(13_10){$(13_10)	draw_set_font(fntPressF);$(13_10)	draw_set_color(c_black);$(13_10)	draw_text(x-30, y-30, "Press F");$(13_10)	draw_set_color(c_white);$(13_10)}$(13_10)"

	
	
	

//display press f, when nearby
if(place_meeting(x,y,objCharacter) > 0)
{
	draw_set_font(fntPressF);
	draw_set_color(c_black);
	draw_text(x-30, y-30, "Press F");
	draw_set_color(c_white);
}