/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4E2E8DDF
/// @DnDArgument : "expr" "20"
/// @DnDArgument : "var" "jump_speed"
jump_speed = 20;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 69B540D4
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 5F6430A5
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "2"
/// @DnDArgument : "color" "$FF3FFBFF"
effect_create_below(2, x + 0, y + 0, 0, $FF3FFBFF & $ffffff);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 71912D86
/// @DnDArgument : "expr" "5"
/// @DnDArgument : "var" "walk_speed"
walk_speed = 5;