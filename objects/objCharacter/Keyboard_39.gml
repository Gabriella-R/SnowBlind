/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 0C956ACA
/// @DnDArgument : "direction" "0"
direction = 0;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 3F3C92E7
/// @DnDArgument : "speed" "spd"
speed = spd;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 76DE5217
/// @DnDArgument : "imageind_relative" "1"
/// @DnDArgument : "spriteind" "sprRight"
/// @DnDSaveInfo : "spriteind" "sprRight"
sprite_index = sprRight;
image_index += 0;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 784BA525
/// @DnDArgument : "speed" "animationSpd"
image_speed = animationSpd;

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 4B4D0838
/// @DnDArgument : "var" "footstepSFX"
/// @DnDArgument : "option" "SnowWalk, SnowWalk2"
footstepSFX = choose(SnowWalk, SnowWalk2);

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 6C6E502C
/// @DnDArgument : "soundid" "footstepSFX"
/// @DnDArgument : "not" "1"
var l6C6E502C_0 = footstepSFX;
if (!audio_is_playing(l6C6E502C_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 045FE3C8
	/// @DnDParent : 6C6E502C
	/// @DnDArgument : "soundid" "footstepSFX"
	audio_play_sound(footstepSFX, 0, 0);
}