/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 0C956ACA
/// @DnDArgument : "direction" "90"
direction = 90;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 3F3C92E7
/// @DnDArgument : "speed" "spd"
speed = spd;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 76DE5217
/// @DnDArgument : "imageind_relative" "1"
/// @DnDArgument : "spriteind" "sprUp"
/// @DnDSaveInfo : "spriteind" "sprUp"
sprite_index = sprUp;
image_index += 0;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 784BA525
/// @DnDArgument : "speed" "animationSpd"
image_speed = animationSpd;

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 296208D1
/// @DnDArgument : "var" "footstepSFX"
/// @DnDArgument : "option" "SnowWalk, SnowWalk2"
footstepSFX = choose(SnowWalk, SnowWalk2);

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 4F1A41AD
/// @DnDArgument : "soundid" "footstepSFX"
/// @DnDArgument : "not" "1"
var l4F1A41AD_0 = footstepSFX;
if (!audio_is_playing(l4F1A41AD_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 7D33A6AE
	/// @DnDParent : 4F1A41AD
	/// @DnDArgument : "soundid" "footstepSFX"
	audio_play_sound(footstepSFX, 0, 0);
}