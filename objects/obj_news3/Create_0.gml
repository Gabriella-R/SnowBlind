/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 35A70F56
/// @DnDArgument : "code" "//inherite the original parent code$(13_10)event_inherited();$(13_10)$(13_10)//now add to it$(13_10)$(13_10)$(13_10)//toggle variables$(13_10)//this one keeps track if the player has read this specific newspaper$(13_10)read = false;$(13_10)$(13_10)$(13_10)$(13_10)//set the newPaper name:$(13_10)myName = "NEWS REPORT: DARK DAY AHEAD AS MORE KILLINGS REPORTED"$(13_10)$(13_10)$(13_10)//create array of all text$(13_10)allText[0] = "As an update to our last report, more deceased have emerged, the bodies are at least several days old. Some have been identified as follows..."$(13_10)allText[1] = "So far, all known suspect have drawn false; however, at least one individual was spotted fleeing the site."$(13_10)allText[2] = "Addtionally, a number of other suspicious individuals were spotted in the surrounding area."$(13_10)allText[3] = "(The last page reads: YOU CAN'T ESCAPE THIS, YOU KNOW YOU CAN'T)"$(13_10)allText[4] = "(The wolves... What have they turned into?! Maybe you can find help on the other side of camp.)"$(13_10)$(13_10)$(13_10)//to add move pages just follow the example of the previous two but add one to the [#]$(13_10)$(13_10)"
//inherite the original parent code
event_inherited();

//now add to it


//toggle variables
//this one keeps track if the player has read this specific newspaper
read = false;



//set the newPaper name:
myName = "NEWS REPORT: DARK DAY AHEAD AS MORE KILLINGS REPORTED"


//create array of all text
allText[0] = "As an update to our last report, more deceased have emerged, the bodies are at least several days old. Some have been identified as follows..."
allText[1] = "So far, all known suspect have drawn false; however, at least one individual was spotted fleeing the site."
allText[2] = "Addtionally, a number of other suspicious individuals were spotted in the surrounding area."
allText[3] = "(The last page reads: YOU CAN'T ESCAPE THIS, YOU KNOW YOU CAN'T)"
allText[4] = "(The wolves... What have they turned into?! Maybe you can find help on the other side of camp.)"


//to add move pages just follow the example of the previous two but add one to the [#]