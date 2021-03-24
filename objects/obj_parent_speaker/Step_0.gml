/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 381CFA73
/// @DnDArgument : "code" "if(place_meeting(x,y,objCharacter)){$(13_10)	$(13_10)	//only create text if we press $(13_10)	if(keyboard_check_pressed(ord("F")))$(13_10)	{$(13_10)		//set our read to true$(13_10)		read = true;$(13_10)		$(13_10)		$(13_10)		//if we havent created text box$(13_10)		///make one$(13_10)		if(myTextBox == noone){$(13_10)		$(13_10)			myTextBox = instance_create_layer(x,y,"Text",obj_textbox);$(13_10)			myTextBox.text = allText;$(13_10)			myTextBox.creator = self;$(13_10)			myTextBox.theName = myName;$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	$(13_10)	$(13_10)} $(13_10)else{//if im not colliding anymore$(13_10)		$(13_10)	if(myTextBox != noone){$(13_10)			$(13_10)		//destroy the box$(13_10)		//and reset the variable$(13_10)		instance_destroy(myTextBox);$(13_10)		myTextBox = noone;$(13_10)	}$(13_10)}$(13_10)$(13_10)// Checks if all the other papers have been read and will cut to the end game screen$(13_10)// if everything has been read$(13_10)$(13_10)if(obj_news1.read == true and obj_news2.read == true and obj_news3.read == true)$(13_10){$(13_10)	totalRead = true;$(13_10)}$(13_10)$(13_10)if(obj_newsLast.read == true)$(13_10){$(13_10)	if(totalRead == true)$(13_10)	{$(13_10)		room_goto(rmGameOver);$(13_10)	}$(13_10)	else $(13_10)	{$(13_10)		obj_newsLast.read = false;$(13_10)	}$(13_10)}$(13_10)"
if(place_meeting(x,y,objCharacter)){
	
	//only create text if we press 
	if(keyboard_check_pressed(ord("F")))
	{
		//set our read to true
		read = true;
		
		
		//if we havent created text box
		///make one
		if(myTextBox == noone){
		
			myTextBox = instance_create_layer(x,y,"Text",obj_textbox);
			myTextBox.text = allText;
			myTextBox.creator = self;
			myTextBox.theName = myName;
		}
	}
	
	
	
} 
else{//if im not colliding anymore
		
	if(myTextBox != noone){
			
		//destroy the box
		//and reset the variable
		instance_destroy(myTextBox);
		myTextBox = noone;
	}
}

// Checks if all the other papers have been read and will cut to the end game screen
// if everything has been read

if(obj_news1.read == true and obj_news2.read == true and obj_news3.read == true)
{
	totalRead = true;
}

if(obj_newsLast.read == true)
{
	if(totalRead == true)
	{
		room_goto(rmGameOver);
	}
	else 
	{
		obj_newsLast.read = false;
	}
}