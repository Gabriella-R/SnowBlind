/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 00B0EF57
/// @DnDArgument : "code" "//draw the border first$(13_10)draw_rectangle_color(xPos-2,yPos-2, xPos+boxWidth+2, yPos+boxHeight+2,c_black,c_black,c_black,c_black, false);$(13_10)$(13_10)//draw a textbox$(13_10)draw_sprite(spr_blackBox,0,xPos,yPos);$(13_10)$(13_10)//draw text$(13_10)//$(13_10)$(13_10)//set the font first$(13_10)draw_set_font(fntNewsPaper);$(13_10)$(13_10)$(13_10)//the typing speed of the displayed text (per frame)$(13_10)if(charCount < string_length(text[page])){charCount +=1;}$(13_10)$(13_10)$(13_10)textPart = string_copy(text[page],1, charCount);$(13_10)$(13_10)//draw the title$(13_10)draw_set_color(c_dkgray);$(13_10)draw_set_halign(fa_center);$(13_10)draw_text(xPos+(boxWidth/2), yPos+yBuffer, theName);$(13_10)draw_set_halign(fa_left);$(13_10)$(13_10)$(13_10)//draw the text$(13_10)draw_set_color(c_black);$(13_10)draw_text_ext(xPos+xBuffer, yPos+yBuffer+stringHeight, textPart, stringHeight, boxWidth- (2*xBuffer));$(13_10)$(13_10)//draw the next page button$(13_10)draw_set_halign(fa_right);$(13_10)draw_set_color(c_maroon);$(13_10)draw_text(xPos+boxWidth,yPos,"F to continue");$(13_10)draw_set_halign(fa_left);"
//draw the border first
draw_rectangle_color(xPos-2,yPos-2, xPos+boxWidth+2, yPos+boxHeight+2,c_black,c_black,c_black,c_black, false);

//draw a textbox
draw_sprite(spr_blackBox,0,xPos,yPos);

//draw text
//

//set the font first
draw_set_font(fntNewsPaper);


//the typing speed of the displayed text (per frame)
if(charCount < string_length(text[page])){charCount +=1;}


textPart = string_copy(text[page],1, charCount);

//draw the title
draw_set_color(c_dkgray);
draw_set_halign(fa_center);
draw_text(xPos+(boxWidth/2), yPos+yBuffer, theName);
draw_set_halign(fa_left);


//draw the text
draw_set_color(c_black);
draw_text_ext(xPos+xBuffer, yPos+yBuffer+stringHeight, textPart, stringHeight, boxWidth- (2*xBuffer));

//draw the next page button
draw_set_halign(fa_right);
draw_set_color(c_maroon);
draw_text(xPos+boxWidth,yPos,"F to continue");
draw_set_halign(fa_left);