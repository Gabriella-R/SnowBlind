/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 35A70F56
/// @DnDArgument : "code" "//inherite the original parent code$(13_10)event_inherited();$(13_10)$(13_10)//now add to it$(13_10)$(13_10)$(13_10)//toggle variables$(13_10)//this one keeps track if the player has read this specific newspaper$(13_10)read = false;$(13_10)$(13_10)$(13_10)$(13_10)//set the newPaper name:$(13_10)myName = "NEWS REPORT: THREE FOUND DEAD AT CAMP SNOWFOOT"$(13_10)$(13_10)$(13_10)//create array of all text$(13_10)allText[0] = "A truly chilling story has come to foot, with reports of at least three dead at Camp Snowfoot, here in our humble town of Frostchester. Leads are currently out, but investigation is"$(13_10)allText[1] = "underway in regards to the culprit. All residents are advised to seek shelter immediately. Multiple potential suspects have been identified, with the only major connection in killings currently"$(13_10)allText[2] = "being numerous slash wounds in each of the deceased."$(13_10)allText[3] = "(Camp Snowfoot? Is that where you are? You can't remember anything...)"$(13_10)allText[4] = "(You're so cold and... Why are those wolves just... staring? Maybe you should head North.)"$(13_10)$(13_10)//to add move pages just follow the example of the previous two but add one to the [#]$(13_10)$(13_10)"
//inherite the original parent code
event_inherited();

//now add to it


//toggle variables
//this one keeps track if the player has read this specific newspaper
read = false;



//set the newPaper name:
myName = "NEWS REPORT: THREE FOUND DEAD AT CAMP SNOWFOOT"


//create array of all text
allText[0] = "A truly chilling story has come to foot, with reports of at least three dead at Camp Snowfoot, here in our humble town of Frostchester. Leads are currently out, but investigation is"
allText[1] = "underway in regards to the culprit. All residents are advised to seek shelter immediately. Multiple potential suspects have been identified, with the only major connection in killings currently"
allText[2] = "being numerous slash wounds in each of the deceased."
allText[3] = "(Camp Snowfoot? Is that where you are? You can't remember anything...)"
allText[4] = "(You're so cold and... Why are those wolves just... staring? Maybe you should head North.)"

//to add move pages just follow the example of the previous two but add one to the [#]