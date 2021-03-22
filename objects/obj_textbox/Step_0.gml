/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 13824161
/// @DnDArgument : "code" "if(keyboard_check_pressed(ord("F")))$(13_10){$(13_10)	$(13_10)	//this lets you finish the typing faster$(13_10)	if(charCount < string_length(text[page]))$(13_10)	{$(13_10)		charCount = string_length(text[page]);$(13_10)	}$(13_10)	$(13_10)	$(13_10)	//only increace if we have next page$(13_10)	else if(page+1 < array_length_1d(text)){$(13_10)		page+=1;	$(13_10)		//rest$(13_10)		charCount =0;$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		//if its more$(13_10)		//destroy the textbox$(13_10)		//and set an alarm to the next frame to reset$(13_10)		instance_destroy();$(13_10)		creator.alarm[1] =1;$(13_10)	}$(13_10)	$(13_10)	$(13_10)	$(13_10)}"
if(keyboard_check_pressed(ord("F")))
{
	
	//this lets you finish the typing faster
	if(charCount < string_length(text[page]))
	{
		charCount = string_length(text[page]);
	}
	
	
	//only increace if we have next page
	else if(page+1 < array_length_1d(text)){
		page+=1;	
		//rest
		charCount =0;
	}
	else
	{
		//if its more
		//destroy the textbox
		//and set an alarm to the next frame to reset
		instance_destroy();
		creator.alarm[1] =1;
	}
	
	
	
}