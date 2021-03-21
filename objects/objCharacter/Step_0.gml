/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 403EB036
/// @DnDArgument : "code" "// Checks if the hypothermia meter is at 100%$(13_10)if(hypoMeter >= 100)$(13_10){$(13_10)	hypoMeter = 100$(13_10)}$(13_10)$(13_10)// Adjusts the hypothermia meter when the player moves far enough from the fire$(13_10)if(distance_to_object(objFire) < 50)$(13_10)	{	$(13_10)		$(13_10)	hypoMeter += 0.2$(13_10)	$(13_10)	}$(13_10)else if(distance_to_object(objFire) > 50)$(13_10){$(13_10)	hypoMeter -= 0.1$(13_10)	$(13_10)	if(hypoMeter <= 0){$(13_10)		x = 60;$(13_10)		y = 600;$(13_10)		room_restart()$(13_10)		hypoMeter = 100;$(13_10)	}$(13_10)}"
// Checks if the hypothermia meter is at 100%
if(hypoMeter >= 100)
{
	hypoMeter = 100
}

// Adjusts the hypothermia meter when the player moves far enough from the fire
if(distance_to_object(objFire) < 50)
	{	
		
	hypoMeter += 0.2
	
	}
else if(distance_to_object(objFire) > 50)
{
	hypoMeter -= 0.1
	
	if(hypoMeter <= 0){
		x = 60;
		y = 600;
		room_restart()
		hypoMeter = 100;
	}
}