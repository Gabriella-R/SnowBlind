/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 29814FB5
/// @DnDArgument : "code" "$(13_10)//keeps track of how many newspapers the player has read$(13_10)$(13_10)//has the player read the first newspaper?$(13_10)if(obj_news1.read == true)$(13_10){$(13_10)	//if yes spawn the wolf$(13_10)	$(13_10)	if(!instance_exists(obj_wolf))$(13_10)	{$(13_10)		//if no wolf, spawn$(13_10)		instance_create_layer(x,y,"Instances",obj_wolf);$(13_10)	}$(13_10)$(13_10)	else$(13_10)	{$(13_10)		//nothings$(13_10)	}$(13_10)}"

//keeps track of how many newspapers the player has read

//has the player read the first newspaper?
if(obj_news1.read == true)
{
	//if yes spawn the wolf
	
	if(!instance_exists(obj_wolf))
	{
		//if no wolf, spawn
		instance_create_layer(x,y,"Instances",obj_wolf);
	}

	else
	{
		//nothings
	}
}