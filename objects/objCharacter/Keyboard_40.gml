/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 0C956ACA
/// @DnDArgument : "direction" "270"
direction = 270;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 3F3C92E7
/// @DnDArgument : "speed" "spd"
speed = spd;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 76DE5217
/// @DnDArgument : "imageind_relative" "1"
/// @DnDArgument : "spriteind" "sprDown"
/// @DnDSaveInfo : "spriteind" "sprDown"
sprite_index = sprDown;
image_index += 0;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 784BA525
/// @DnDArgument : "speed" "animationSpd"
image_speed = animationSpd;

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 313A9ABF
/// @DnDArgument : "var" "footstepSFX"
/// @DnDArgument : "option" "SnowWalk, SnowWalk2"
footstepSFX = choose(SnowWalk, SnowWalk2);

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 08A43ABC
/// @DnDArgument : "soundid" "footstepSFX"
/// @DnDArgument : "not" "1"
var l08A43ABC_0 = footstepSFX;
if (!audio_is_playing(l08A43ABC_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 018B5809
	/// @DnDParent : 08A43ABC
	/// @DnDArgument : "soundid" "footstepSFX"
	audio_play_sound(footstepSFX, 0, 0);
}