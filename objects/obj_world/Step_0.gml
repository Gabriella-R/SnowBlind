/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 29814FB5
/// @DnDArgument : "code" "$(13_10)//keeps track of how many newspapers the player has read$(13_10)$(13_10)//has the player read the first newspaper?$(13_10)//and only the first newspaper$(13_10)if(obj_news1.read == true and obj_news3.read == false)$(13_10){$(13_10)	//if yes spawn the wolf$(13_10)	$(13_10)	if(!instance_exists(obj_wolf))$(13_10)	{$(13_10)		//if no wolf, spawn$(13_10)		instance_create_layer(x,y,"Instances",obj_wolf);$(13_10)	}$(13_10)$(13_10)	else$(13_10)	{$(13_10)		//nothings$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)//has the player read the third newspaper$(13_10)else if(obj_news3.read == true)$(13_10){$(13_10)	//if theres a wolf on the map change it to a were wolf$(13_10)	if(instance_exists(obj_wolf))$(13_10)	{$(13_10)		instance_change(obj_wereWolf, false);$(13_10)	}$(13_10)}$(13_10)$(13_10)// Stops wind once game end occurs$(13_10)if(room != rmGameRoom)$(13_10){$(13_10)	audio_stop_sound(bgm_end__wind_);$(13_10)}"

//keeps track of how many newspapers the player has read

//has the player read the first newspaper?
//and only the first newspaper
if(obj_news1.read == true and obj_news3.read == false)
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


//has the player read the third newspaper
else if(obj_news3.read == true)
{
	//if theres a wolf on the map change it to a were wolf
	if(instance_exists(obj_wolf))
	{
		instance_change(obj_wereWolf, false);
	}
}

// Stops wind once game end occurs
if(room != rmGameRoom)
{
	audio_stop_sound(bgm_end__wind_);
}