/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 381CFA73
/// @DnDArgument : "code" "if(place_meeting(x,y,objCharacter)){$(13_10)	$(13_10)	//only create text if we press $(13_10)	if(keyboard_check_pressed(ord("F")))$(13_10)	{$(13_10)		//set our read to true$(13_10)		read = true;$(13_10)		$(13_10)		//if we havent created text box$(13_10)		///make one$(13_10)		if(myTextBox == noone){$(13_10)		$(13_10)			myTextBox = instance_create_layer(x,y,"Text",obj_textbox);$(13_10)			myTextBox.text = allText;$(13_10)			myTextBox.creator = self;$(13_10)			myTextBox.theName = myName;$(13_10)			$(13_10)			// Play page turn SFX from random set$(13_10)		    pageSFXVal = irandom_range(0,12);$(13_10)		    switch(pageSFXVal)$(13_10)		    {$(13_10)			    case 0:$(13_10)			    pageSFX = BookFlip1;$(13_10)			    break;$(13_10)			    case 1:$(13_10)			    pageSFX = BookFlip2;$(13_10)			    break;$(13_10)			    case 2:$(13_10)			    pageSFX = BookFlip3;$(13_10)			    break;$(13_10)			    case 3:$(13_10)			    pageSFX = BookFlip4;$(13_10)			    break;$(13_10)			    case 4:$(13_10)			    pageSFX = BookFlip5;$(13_10)			    break;$(13_10)			    case 5:$(13_10)			    pageSFX = BookFlip6;$(13_10)			    break;$(13_10)			    case 6:$(13_10)			    pageSFX = BookFlip7;$(13_10)			    break;$(13_10)			    case 7:$(13_10)			    pageSFX = BookFlip8;$(13_10)			    break;$(13_10)			    case 8:$(13_10)			    pageSFX = BookFlip9;$(13_10)				break;$(13_10)			    case 9:$(13_10)			    pageSFX = BookFlip10;$(13_10)			    break;$(13_10)			    case 10:$(13_10)			    pageSFX = BookFlip11;$(13_10)			    break;$(13_10)			    case 11:$(13_10)			    pageSFX = BookFlip12;$(13_10)			    break;$(13_10)			    default:$(13_10)			    pageSFX = BookFlip13;$(13_10)		    }$(13_10)		    if(!audio_is_playing(pageSFX))$(13_10)		    {$(13_10)			    audio_play_sound(pageSFX,1,false);$(13_10)		    }$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	$(13_10)	$(13_10)} $(13_10)else{//if im not colliding anymore$(13_10)		$(13_10)	if(myTextBox != noone){$(13_10)			$(13_10)		//destroy the box$(13_10)		//and reset the variable$(13_10)		instance_destroy(myTextBox);$(13_10)		myTextBox = noone;$(13_10)		audio_stop_all();$(13_10)	}$(13_10)}$(13_10)$(13_10)// Checks if all the other papers have been read and will cut to the end game screen$(13_10)// if everything has been read$(13_10)$(13_10)if(obj_news1.read == true and obj_news2.read == true and obj_news3.read == true)$(13_10){$(13_10)	totalRead = true;$(13_10)}$(13_10)$(13_10)if(obj_newsLast.read == true)$(13_10){$(13_10)	if(totalRead == true)$(13_10)	{$(13_10)		room_goto(rmGameOver);$(13_10)	}$(13_10)	else $(13_10)	{$(13_10)		obj_newsLast.read = false;$(13_10)	}$(13_10)}$(13_10)"
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
			
			// Play page turn SFX from random set
		    pageSFXVal = irandom_range(0,12);
		    switch(pageSFXVal)
		    {
			    case 0:
			    pageSFX = BookFlip1;
			    break;
			    case 1:
			    pageSFX = BookFlip2;
			    break;
			    case 2:
			    pageSFX = BookFlip3;
			    break;
			    case 3:
			    pageSFX = BookFlip4;
			    break;
			    case 4:
			    pageSFX = BookFlip5;
			    break;
			    case 5:
			    pageSFX = BookFlip6;
			    break;
			    case 6:
			    pageSFX = BookFlip7;
			    break;
			    case 7:
			    pageSFX = BookFlip8;
			    break;
			    case 8:
			    pageSFX = BookFlip9;
				break;
			    case 9:
			    pageSFX = BookFlip10;
			    break;
			    case 10:
			    pageSFX = BookFlip11;
			    break;
			    case 11:
			    pageSFX = BookFlip12;
			    break;
			    default:
			    pageSFX = BookFlip13;
		    }
		    if(!audio_is_playing(pageSFX))
		    {
			    audio_play_sound(pageSFX,1,false);
		    }
		}
	}
	
	
	
} 
else{//if im not colliding anymore
		
	if(myTextBox != noone){
			
		//destroy the box
		//and reset the variable
		instance_destroy(myTextBox);
		myTextBox = noone;
		audio_stop_all();
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