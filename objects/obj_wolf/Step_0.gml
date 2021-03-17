/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 140BDD6E
/// @DnDArgument : "code" "$(13_10)$(13_10)//when the wolf is created, it looks to see if there is a player on the map$(13_10)$(13_10)if(instance_exists(objCharacter)){$(13_10)	$(13_10)	//for readabiltiy player is called man$(13_10)	var man = objCharacter;$(13_10)	$(13_10)	//This is set to be a radius the wolf is allowed to be in around the player$(13_10)	//The wolf will never get to close to the player$(13_10)	//and when the player trys to approach it runs away$(13_10)	$(13_10)	//is our radius broken$(13_10)	//are we to far$(13_10)	if(  point_distance(x,y,man.x, man.y) > 300)$(13_10)	{$(13_10)		//if were too far$(13_10)		//start running/walking towards them$(13_10)		speed = 4;$(13_10)$(13_10)		direction = point_direction(x,y,man.x,man.y);$(13_10)		$(13_10)	}$(13_10)	$(13_10)	//are we too close$(13_10)	else if( point_distance(x,y,man.x, man.y) < 200)$(13_10)	{$(13_10)		//if were too far$(13_10)		//start running/walking towards them$(13_10)		speed = 4;$(13_10)$(13_10)		direction = point_direction(man.x,man.y,x,y);$(13_10)		$(13_10)	}$(13_10)	$(13_10)	//then we are inside our radius$(13_10)	else$(13_10)	{$(13_10)		//then we don't need to move$(13_10)		speed = 0;$(13_10)	}$(13_10)	$(13_10)	$(13_10)}"


//when the wolf is created, it looks to see if there is a player on the map

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
		
	}
	
	//are we too close
	else if( point_distance(x,y,man.x, man.y) < 200)
	{
		//if were too far
		//start running/walking towards them
		speed = 4;

		direction = point_direction(man.x,man.y,x,y);
		
	}
	
	//then we are inside our radius
	else
	{
		//then we don't need to move
		speed = 0;
	}
	
	
}