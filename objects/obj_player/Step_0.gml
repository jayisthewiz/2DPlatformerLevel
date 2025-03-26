/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4E9D0425
/// @DnDArgument : "expr" "layer_tilemap_get_id("Tiles")"
/// @DnDArgument : "var" "collisions_tilemap"
collisions_tilemap = layer_tilemap_get_id("Tiles");

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 700BF39D
/// @DnDComment : 1 would be right$(13_10)-1 would be pressing left$(13_10)0 would be no input
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "keyboard_check(vk_right) - keyboard_check(vk_left)"
/// @DnDArgument : "var" "move_x"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3BC36726
/// @DnDArgument : "expr" "keyboard_check(vk_left) || gamepad_button_check(0, gp_padl) || (gamepad_axis_value(0,gp_axislh) < -0.2)"
/// @DnDArgument : "var" "controls_input_left"
controls_input_left = keyboard_check(vk_left) || gamepad_button_check(0, gp_padl) || (gamepad_axis_value(0,gp_axislh) < -0.2);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4F4EDF72
/// @DnDArgument : "expr" "keyboard_check(vk_right) || gamepad_button_check(0, gp_padr) || (gamepad_axis_value(0,gp_axislh) > 0.2)"
/// @DnDArgument : "var" "controls_input_right"
controls_input_right = keyboard_check(vk_right) || gamepad_button_check(0, gp_padr) || (gamepad_axis_value(0,gp_axislh) > 0.2);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 11B812AA
/// @DnDArgument : "expr" "controls_input_right - controls_input_left"
/// @DnDArgument : "var" "move_x"
move_x = controls_input_right - controls_input_left;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 48069212
/// @DnDArgument : "expr" "move_x * walk_speed"
/// @DnDArgument : "var" "move_x"
move_x = move_x * walk_speed;

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 02E63983
/// @DnDArgument : "msg" "move_x"
show_debug_message(string(move_x));

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 54F42764
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collisions_tilemap"
var l54F42764_0 = instance_place(x + 0, y + 2, [collisions_tilemap]);
if ((l54F42764_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 536A7C0B
	/// @DnDComment : reset the falling$(13_10)speed on movement$(13_10)Y when you landed $(13_10)on ground
	/// @DnDParent : 54F42764
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 6311549F
	/// @DnDParent : 54F42764
	var l6311549F_0;
	l6311549F_0 = keyboard_check_pressed(vk_space);
	if (l6311549F_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3EDDB225
		/// @DnDComment : jump
		/// @DnDParent : 6311549F
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += -jump_speed;
	}

	/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 6BBB6592
	/// @DnDParent : 54F42764
	/// @DnDArgument : "btn" "gp_face1"
	var l6BBB6592_0 = 0;
	var l6BBB6592_1 = gp_face1;
	if(gamepad_is_connected(l6BBB6592_0) && gamepad_button_check_pressed(l6BBB6592_0, l6BBB6592_1))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 22F2FF6B
		/// @DnDComment : jump
		/// @DnDParent : 6BBB6592
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += -jump_speed;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2E51D643
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1DF68749
	/// @DnDParent : 2E51D643
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 617737A7
		/// @DnDComment : gravity
		/// @DnDParent : 1DF68749
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;
	}
}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 5514B48A
/// @DnDComment : object is the object being avoided$(13_10)
/// @DnDApplyTo : {obj_player}
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "object" "collisions_tilemap"
move_and_collide(move_x, move_y, collisions_tilemap,4,0,0,-1,-1);

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 67536E47
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collision_tilemap_death_zone"
var l67536E47_0 = instance_place(x + 0, y + 2, [collision_tilemap_death_zone]);
if ((l67536E47_0 > 0))
{
	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 587CD867
	/// @DnDParent : 67536E47
	room_restart();
}