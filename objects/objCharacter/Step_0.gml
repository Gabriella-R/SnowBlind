/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 403EB036
/// @DnDArgument : "code" "// Checks if the hypothermia meter is at 100%$(13_10)if(hypoMeter >= 100)$(13_10){$(13_10)	hypoMeter = 100$(13_10)}$(13_10)$(13_10)// Adjusts the hypothermia meter when the player moves far enough from the fire$(13_10)if(distance_to_object(objFire) < 50)$(13_10)	{	$(13_10)		// Plays appropriate fire SFX.$(13_10)		if(!audio_is_playing(sfx_fire))$(13_10)		{$(13_10)			audio_play_sound(sfx_fire,2,true);$(13_10)		}$(13_10)	    hypoMeter += 0.2$(13_10)	$(13_10)	}$(13_10)else if(distance_to_object(objFire) > 50)$(13_10){$(13_10)	// Stops fire audio.$(13_10)	if(audio_is_playing(sfx_fire))$(13_10)	{$(13_10)		audio_stop_sound(sfx_fire);$(13_10)	}$(13_10)	hypoMeter -= 0.1$(13_10)	$(13_10)	if(hypoMeter <= 0){$(13_10)		x = 60;$(13_10)		y = 600;$(13_10)		audio_stop_all();$(13_10)		room_goto(rmYouLose);$(13_10)		hypoMeter = 100;$(13_10)	}$(13_10)}"
// Checks if the hypothermia meter is at 100%
if(hypoMeter >= 100)
{
	hypoMeter = 100
}

// Adjusts the hypothermia meter when the player moves far enough from the fire
if(distance_to_object(objFire) < 50)
	{	
		// Plays appropriate fire SFX.
		if(!audio_is_playing(sfx_fire))
		{
			audio_play_sound(sfx_fire,2,true);
		}
	    hypoMeter += 0.2
	
	}
else if(distance_to_object(objFire) > 50)
{
	// Stops fire audio.
	if(audio_is_playing(sfx_fire))
	{
		audio_stop_sound(sfx_fire);
	}
	hypoMeter -= 0.1
	
	if(hypoMeter <= 0){
		x = 60;
		y = 600;
		audio_stop_all();
		room_goto(rmYouLose);
		hypoMeter = 100;
	}
}