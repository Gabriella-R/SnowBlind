/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 01BFEC25
/// @DnDArgument : "code" "//total amount of newspapers the player has clicked on$(13_10)newsPaperRead = 0;$(13_10)$(13_10)// Plays game ambient sound$(13_10)if(!audio_is_playing(bgm_end__wind_))$(13_10){$(13_10)	audio_play_sound(bgm_end__wind_,2,true);$(13_10)}"
//total amount of newspapers the player has clicked on
newsPaperRead = 0;

// Plays game ambient sound
if(!audio_is_playing(bgm_end__wind_))
{
	audio_play_sound(bgm_end__wind_,2,true);
}