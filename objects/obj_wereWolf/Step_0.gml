/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2066A109
/// @DnDArgument : "code" "$(13_10)$(13_10)//it looks to see if there is a player on the map first$(13_10)$(13_10)if(instance_exists(objCharacter)){$(13_10)	$(13_10)	//for readabiltiy player is called man$(13_10)	var man = objCharacter;$(13_10)	$(13_10)	//This is set to be a radius the wolf is allowed to be in around the player$(13_10)	//The wolf will never get to close to the player$(13_10)	//and when the player trys to approach it runs away$(13_10)	$(13_10)	//is our radius broken$(13_10)	//are we to far$(13_10)	if(  point_distance(x,y,man.x, man.y) > 300)$(13_10)	{$(13_10)		//if were too far$(13_10)		//start running/walking towards them$(13_10)		speed = 4;$(13_10)$(13_10)		direction = point_direction(x,y,man.x,man.y);$(13_10)		$(13_10)		$(13_10)		#region animations$(13_10)		//this is setting the animation for the wolf,$(13_10)		//if they are going side ways or up/down$(13_10)		if(  abs(x-man.x)+500 >  abs(y-man.y) )$(13_10)		{$(13_10)			//this means we are going side ways$(13_10)			$(13_10)			//which way are we moving$(13_10)			if( direction > 90 && direction < 270)$(13_10)			{$(13_10)				$(13_10)				sprite_index = werewolf_horizontal_left;$(13_10)				facing = left;$(13_10)			}$(13_10)			else$(13_10)			{$(13_10)				sprite_index = werewolf_horizontal_right;$(13_10)				facing = right;$(13_10)			}$(13_10)		}$(13_10)		else if( y < man.y)$(13_10)		{$(13_10)			sprite_index = werewolf_south;$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			sprite_index = werewolf_north;$(13_10)		}$(13_10)		$(13_10)		#endregion$(13_10)		$(13_10)	}$(13_10)	$(13_10)	//are we too close$(13_10)	else if( point_distance(x,y,man.x, man.y) < 200)$(13_10)	{$(13_10)		//if were too far$(13_10)		//start running/walking towards them$(13_10)		speed = 4;$(13_10)$(13_10)		direction = point_direction(man.x,man.y,x,y);$(13_10)		$(13_10)		#region animations$(13_10)		//this is setting the animation for the wolf,$(13_10)		//if they are going side ways or up/down$(13_10)		if(  abs(x-man.x)+500 >  abs(y-man.y) )$(13_10)		{$(13_10)			//this means we are going side ways$(13_10)			$(13_10)			//which way are we moving$(13_10)			if( direction > 90 && direction < 270)$(13_10)			{$(13_10)				$(13_10)				sprite_index = werewolf_horizontal_left;$(13_10)				facing = left;$(13_10)			}$(13_10)			else$(13_10)			{$(13_10)				sprite_index = werewolf_horizontal_right;$(13_10)				facing = right;$(13_10)			}$(13_10)			$(13_10)		}$(13_10)		else if( y < man.y )$(13_10)		{$(13_10)			sprite_index = werewolf_south;$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			sprite_index = werewolf_north;$(13_10)		}$(13_10)		$(13_10)		#endregion$(13_10)		$(13_10)		$(13_10)	}$(13_10)	$(13_10)	//then we are inside our radius$(13_10)	else$(13_10)	{$(13_10)		//then we don't need to move$(13_10)		speed = 0;$(13_10)		$(13_10)		//set our sprite to idle$(13_10)		if(facing == left)$(13_10)		{$(13_10)			sprite_index = werewolf_idle_left;$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			sprite_index = werewolf_idle_right;$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	$(13_10)}"


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