/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 29245558
/// @DnDArgument : "code" "// Draws the buttons for the main menu$(13_10)// Makes sure that the buttons are spaced correctly$(13_10)$(13_10)var i = 0;$(13_10)$(13_10)repeat(buttons)$(13_10){$(13_10)	draw_set_font(fntInstructionMenu);$(13_10)	draw_set_halign(fa_right);$(13_10)	draw_set_color(c_ltgrey);$(13_10)	$(13_10)	if(menuIndex == i)$(13_10)	{$(13_10)		draw_set_color(c_red);$(13_10)	}$(13_10)	$(13_10)	draw_text(mainMenuX,mainMenuY + buttonH * i,button[i]);$(13_10)	i++;$(13_10)}"
// Draws the buttons for the main menu
// Makes sure that the buttons are spaced correctly

var i = 0;

repeat(buttons)
{
	draw_set_font(fntInstructionMenu);
	draw_set_halign(fa_right);
	draw_set_color(c_ltgrey);
	
	if(menuIndex == i)
	{
		draw_set_color(c_red);
	}
	
	draw_text(mainMenuX,mainMenuY + buttonH * i,button[i]);
	i++;
}