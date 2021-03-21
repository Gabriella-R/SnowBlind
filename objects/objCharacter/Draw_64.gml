/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 117A5979
/// @DnDArgument : "code" "// Draws Hypothermia meter at the top left of the screen $(13_10)// Full color is blue, but will go to aqua as the meter goes down $(13_10)$(13_10)draw_set_color(c_white);$(13_10)draw_set_font(fntHypoMeter);$(13_10)draw_text(20,10,"Hypothermia Meter");$(13_10)draw_healthbar(20,40,160,65,hypoMeter,c_black,c_aqua,c_blue,0,true,true);"
// Draws Hypothermia meter at the top left of the screen 
// Full color is blue, but will go to aqua as the meter goes down 

draw_set_color(c_white);
draw_set_font(fntHypoMeter);
draw_text(20,10,"Hypothermia Meter");
draw_healthbar(20,40,160,65,hypoMeter,c_black,c_aqua,c_blue,0,true,true);