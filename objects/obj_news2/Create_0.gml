/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 35A70F56
/// @DnDArgument : "code" "//inherite the original parent code$(13_10)event_inherited();$(13_10)$(13_10)//now add to it$(13_10)$(13_10)$(13_10)//toggle variables$(13_10)//this one keeps track if the player has read this specific newspaper$(13_10)read = false;$(13_10)$(13_10)$(13_10)$(13_10)//set the newPaper name:$(13_10)myName = "NEWS REPORT: DARK DAY AHEAD AS MORE KILLINGS REPORTED"$(13_10)$(13_10)$(13_10)//create array of all text$(13_10)allText[0] = "As an update to our last report, reports of even more dead have emerged, although the bodies are at least several days old. Some of the deceased have been identified, as follows:"$(13_10)allText[1] = "So far, all known suspect leads have drawn false; however, at least one individual has been spotted fleeing the site. In addition, a number of other figures were spotted in the surrounding area engaging in suspicious activity of unknown purpose."$(13_10)$(13_10)//to add move pages just follow the example of the previous two but add one to the [#]$(13_10)$(13_10)"
//inherite the original parent code
event_inherited();

//now add to it


//toggle variables
//this one keeps track if the player has read this specific newspaper
read = false;



//set the newPaper name:
myName = "NEWS REPORT: DARK DAY AHEAD AS MORE KILLINGS REPORTED"


//create array of all text
allText[0] = "As an update to our last report, reports of even more dead have emerged, although the bodies are at least several days old. Some of the deceased have been identified, as follows:"
allText[1] = "So far, all known suspect leads have drawn false; however, at least one individual has been spotted fleeing the site. In addition, a number of other figures were spotted in the surrounding area engaging in suspicious activity of unknown purpose."

//to add move pages just follow the example of the previous two but add one to the [#]