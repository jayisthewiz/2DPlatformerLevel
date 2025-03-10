/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 153EA664
/// @DnDArgument : "expr" "20"
/// @DnDArgument : "var" "jump_speed"
jump_speed = 20;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 21106884
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 3BF45C72
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "8"
/// @DnDArgument : "size" "1"
/// @DnDArgument : "color" "$FF0749C4"
effect_create_below(8, x + 0, y + 0, 1, $FF0749C4 & $ffffff);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7A7F7891
/// @DnDArgument : "expr" "20"
/// @DnDArgument : "var" "walk_speed"
walk_speed = 20;