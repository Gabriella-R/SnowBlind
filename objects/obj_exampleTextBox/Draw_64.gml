/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 78D2A4FB
/// @DnDArgument : "code" "$(13_10)	$(13_10)$(13_10)$(13_10)//if we can display$(13_10)if(toggleSpot1 == 0 && toggleSpot1_f){$(13_10)$(13_10)	//display press f$(13_10)	draw_set_color(c_black);$(13_10)	draw_text_transformed(display_get_gui_width()/4, display_get_gui_height()/4, "Press f",2,2,0);$(13_10)	draw_set_color(c_white);$(13_10)$(13_10)}"

	


//if we can display
if(toggleSpot1 == 0 && toggleSpot1_f){

	//display press f
	draw_set_color(c_black);
	draw_text_transformed(display_get_gui_width()/4, display_get_gui_height()/4, "Press f",2,2,0);
	draw_set_color(c_white);

}