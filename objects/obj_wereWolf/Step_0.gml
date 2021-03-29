/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2066A109
/// @DnDArgument : "code" "// Sets direction references in step, since start is not run.$(13_10)left = 0;$(13_10)right = 1;$(13_10)$(13_10)//it looks to see if there is a player on the map first$(13_10)$(13_10)if(instance_exists(objCharacter)){$(13_10)	$(13_10)	//for readabiltiy player is called man$(13_10)	var man = objCharacter;$(13_10)	$(13_10)	//This is set to be a radius the wolf is allowed to be in around the player$(13_10)	//The wolf will never get to close to the player$(13_10)	//and when the player trys to approach it runs away$(13_10)	$(13_10)	//is our radius broken$(13_10)	//are we to far$(13_10)	if(  point_distance(x,y,man.x, man.y) > 300)$(13_10)	{$(13_10)		//if were too far$(13_10)		//start running/walking towards them$(13_10)		//and make appropriate sounds (randomized)$(13_10)		wereSoundVal = irandom_range(0,5);$(13_10)		switch(wereSoundVal)$(13_10)		{$(13_10)			case 0:$(13_10)			    if(!(audio_is_playing(grunt_01) or audio_is_playing(grunt_04) or audio_is_playing(misc_04) or audio_is_playing(misc_05) or audio_is_playing(roar_03)))$(13_10)				{$(13_10)					audio_play_sound(grunt_01,1,false);$(13_10)				}$(13_10)				break;$(13_10)			case 1:$(13_10)			    if(!(audio_is_playing(grunt_01) or audio_is_playing(grunt_04) or audio_is_playing(misc_04) or audio_is_playing(misc_05) or audio_is_playing(roar_03)))$(13_10)				{$(13_10)					audio_play_sound(misc_04,1,false);$(13_10)				}$(13_10)				break;$(13_10)			case 2:$(13_10)			    if(!(audio_is_playing(grunt_01) or audio_is_playing(grunt_04) or audio_is_playing(misc_04) or audio_is_playing(misc_05) or audio_is_playing(roar_03)))$(13_10)				{$(13_10)					audio_play_sound(misc_05,1,false);$(13_10)				}$(13_10)				break;$(13_10)			case 3:$(13_10)			    if(!(audio_is_playing(grunt_01) or audio_is_playing(grunt_04) or audio_is_playing(misc_04) or audio_is_playing(misc_05) or audio_is_playing(roar_03)))$(13_10)				{$(13_10)					audio_play_sound(roar_03,1,false);$(13_10)				}$(13_10)				break;$(13_10)			default:$(13_10)			    // Make no sound$(13_10)		}$(13_10)		$(13_10)		speed = 4;$(13_10)$(13_10)		direction = point_direction(x,y,man.x,man.y);$(13_10)		$(13_10)		$(13_10)		#region animations$(13_10)		//this is setting the animation for the wolf,$(13_10)		//if they are going side ways or up/down$(13_10)		if(  abs(x-man.x)+500 >  abs(y-man.y) )$(13_10)		{$(13_10)			//this means we are going side ways$(13_10)			$(13_10)			//which way are we moving$(13_10)			if( direction > 90 && direction < 270)$(13_10)			{$(13_10)				$(13_10)				sprite_index = werewolf_horizontal_left;$(13_10)				facing = left;$(13_10)			}$(13_10)			else$(13_10)			{$(13_10)				sprite_index = werewolf_horizontal_right;$(13_10)				facing = right;$(13_10)			}$(13_10)		}$(13_10)		else if( y < man.y)$(13_10)		{$(13_10)			sprite_index = werewolf_south;$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			sprite_index = werewolf_north;$(13_10)		}$(13_10)		$(13_10)		#endregion$(13_10)		$(13_10)	}$(13_10)	$(13_10)	//are we too close$(13_10)	else if( point_distance(x,y,man.x, man.y) < 200)$(13_10)	{$(13_10)		//if were too far$(13_10)		//start running/walking towards them$(13_10)		speed = 4;$(13_10)$(13_10)		direction = point_direction(man.x,man.y,x,y);$(13_10)		$(13_10)		#region animations$(13_10)		//this is setting the animation for the wolf,$(13_10)		//if they are going side ways or up/down$(13_10)		if(  abs(x-man.x)+500 >  abs(y-man.y) )$(13_10)		{$(13_10)			//this means we are going side ways$(13_10)			$(13_10)			//which way are we moving$(13_10)			if( direction > 90 && direction < 270)$(13_10)			{$(13_10)				$(13_10)				sprite_index = werewolf_horizontal_left;$(13_10)				facing = left;$(13_10)			}$(13_10)			else$(13_10)			{$(13_10)				sprite_index = werewolf_horizontal_right;$(13_10)				facing = right;$(13_10)			}$(13_10)			$(13_10)		}$(13_10)		else if( y < man.y )$(13_10)		{$(13_10)			sprite_index = werewolf_south;$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			sprite_index = werewolf_north;$(13_10)		}$(13_10)		$(13_10)		#endregion$(13_10)		$(13_10)		$(13_10)	}$(13_10)	$(13_10)	//then we are inside our radius$(13_10)	else$(13_10)	{$(13_10)		//then we don't need to move$(13_10)		speed = 0;$(13_10)		$(13_10)		//set our sprite to idle$(13_10)		if(facing == left)$(13_10)		{$(13_10)			sprite_index = werewolf_idle_left;$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			sprite_index = werewolf_idle_right;$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	$(13_10)}"
// Sets direction references in step, since start is not run.
left = 0;
right = 1;

//it looks to see if there is a player on the map first

if(instance_exists(objCharacter)){
	
	//for readabiltiy player is called man
	var man = objCharacter;
	
	//This is set to be a radius the wolf is allowed to be in around the player
	//The wolf will never get to close to the player
	//and when the player trys to approach it runs away
	
	//is our radius broken
	//are we to far
	if(  point_distance(x,y,man.x, man.y) > 300)
	{
		//if were too far
		//start running/walking towards them
		//and make appropriate sounds (randomized)
		wereSoundVal = irandom_range(0,5);
		switch(wereSoundVal)
		{
			case 0:
			    if(!(audio_is_playing(grunt_01) or audio_is_playing(grunt_04) or audio_is_playing(misc_04) or audio_is_playing(misc_05) or audio_is_playing(roar_03)))
				{
					audio_play_sound(grunt_01,1,false);
				}
				break;
			case 1:
			    if(!(audio_is_playing(grunt_01) or audio_is_playing(grunt_04) or audio_is_playing(misc_04) or audio_is_playing(misc_05) or audio_is_playing(roar_03)))
				{
					audio_play_sound(misc_04,1,false);
				}
				break;
			case 2:
			    if(!(audio_is_playing(grunt_01) or audio_is_playing(grunt_04) or audio_is_playing(misc_04) or audio_is_playing(misc_05) or audio_is_playing(roar_03)))
				{
					audio_play_sound(misc_05,1,false);
				}
				break;
			case 3:
			    if(!(audio_is_playing(grunt_01) or audio_is_playing(grunt_04) or audio_is_playing(misc_04) or audio_is_playing(misc_05) or audio_is_playing(roar_03)))
				{
					audio_play_sound(roar_03,1,false);
				}
				break;
			default:
			    // Make no sound
		}
		
		speed = 4;

		direction = point_direction(x,y,man.x,man.y);
		
		
		#region animations
		//this is setting the animation for the wolf,
		//if they are going side ways or up/down
		if(  abs(x-man.x)+500 >  abs(y-man.y) )
		{
			//this means we are going side ways
			
			//which way are we moving
			if( direction > 90 && direction < 270)
			{
				
				sprite_index = werewolf_horizontal_left;
				facing = left;
			}
			else
			{
				sprite_index = werewolf_horizontal_right;
				facing = right;
			}
		}
		else if( y < man.y)
		{
			sprite_index = werewolf_south;
		}
		else
		{
			sprite_index = werewolf_north;
		}
		
		#endregion
		
	}
	
	//are we too close
	else if( point_distance(x,y,man.x, man.y) < 200)
	{
		//if were too far
		//start running/walking towards them
		speed = 4;

		direction = point_direction(man.x,man.y,x,y);
		
		#region animations
		//this is setting the animation for the wolf,
		//if they are going side ways or up/down
		if(  abs(x-man.x)+500 >  abs(y-man.y) )
		{
			//this means we are going side ways
			
			//which way are we moving
			if( direction > 90 && direction < 270)
			{
				
				sprite_index = werewolf_horizontal_left;
				facing = left;
			}
			else
			{
				sprite_index = werewolf_horizontal_right;
				facing = right;
			}
			
		}
		else if( y < man.y )
		{
			sprite_index = werewolf_south;
		}
		else
		{
			sprite_index = werewolf_north;
		}
		
		#endregion
		
		
	}
	
	//then we are inside our radius
	else
	{
		//then we don't need to move
		speed = 0;
		
		//set our sprite to idle
		if(facing == left)
		{
			sprite_index = werewolf_idle_left;
		}
		else
		{
			sprite_index = werewolf_idle_right;
		}
	}
	
	
}