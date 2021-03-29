/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5431C3E6
/// @DnDArgument : "code" "//just check if there is no wolf$(13_10)//then spawn one$(13_10)$(13_10)$(13_10)if(!instance_exists(obj_wolf))$(13_10){$(13_10)	//if no wolf, spawn$(13_10)	instance_create_layer(x,y,"Instances",obj_wolf);$(13_10)}$(13_10)$(13_10)else$(13_10){$(13_10)	//nothings$(13_10)}"
//just check if there is no wolf
//then spawn one


if(!instance_exists(obj_wolf))
{
	//if no wolf, spawn
	instance_create_layer(x,y,"Instances",obj_wolf);
}

else
{
	//nothings
}