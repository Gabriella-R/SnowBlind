/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 35A70F56
/// @DnDArgument : "code" "//inherite the original parent code$(13_10)event_inherited();$(13_10)$(13_10)//now add to it$(13_10)$(13_10)$(13_10)//toggle variables$(13_10)//this one keeps track if the player has read this specific newspaper$(13_10)read = false;$(13_10)$(13_10)$(13_10)$(13_10)//set the newPaper name:$(13_10)myName = "NEWS REPORT:..."$(13_10)$(13_10)$(13_10)//create array of all text$(13_10)allText[0] = "(The paper has been torn apart.)"$(13_10)allText[1] = "(It seems you won't be able to gain any knowledge from this one...)"$(13_10)allText[2] = "(That didn't help at all.)"$(13_10)allText[3] = "(What are you doing here? What is going on? It looks like there's a path leading East.)"$(13_10)$(13_10)//to add move pages just follow the example of the previous two but add one to the [#]$(13_10)$(13_10)"
//inherite the original parent code
event_inherited();

//now add to it


//toggle variables
//this one keeps track if the player has read this specific newspaper
read = false;



//set the newPaper name:
myName = "NEWS REPORT:..."


//create array of all text
allText[0] = "(The paper has been torn apart.)"
allText[1] = "(It seems you won't be able to gain any knowledge from this one...)"
allText[2] = "(That didn't help at all.)"
allText[3] = "(What are you doing here? What is going on? It looks like there's a path leading East.)"

//to add move pages just follow the example of the previous two but add one to the [#]