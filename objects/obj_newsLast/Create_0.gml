/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 35A70F56
/// @DnDArgument : "code" "//inherite the original parent code$(13_10)event_inherited();$(13_10)$(13_10)//now add to it$(13_10)$(13_10)$(13_10)//toggle variables$(13_10)//this one keeps track if the player has read this specific newspaper$(13_10)read = false;$(13_10)$(13_10)$(13_10)$(13_10)//set the newPaper name:$(13_10)myName = "Come back when you've read everything..."$(13_10)$(13_10)$(13_10)//create array of all text$(13_10)allText[0] = "Are you prepared to face the truth?"$(13_10)$(13_10)//to add move pages just follow the example of the previous two but add one to the [#]$(13_10)$(13_10)"
//inherite the original parent code
event_inherited();

//now add to it


//toggle variables
//this one keeps track if the player has read this specific newspaper
read = false;



//set the newPaper name:
myName = "Come back when you've read everything..."


//create array of all text
allText[0] = "Are you prepared to face the truth?"

//to add move pages just follow the example of the previous two but add one to the [#]