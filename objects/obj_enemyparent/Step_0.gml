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


/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 02E63983
/// @DnDArgument : "msg" "move_x"
show_debug_message(string(move_x));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 48069212
/// @DnDArgument : "expr" "move_x * walk_speed"
/// @DnDArgument : "var" "move_x"
move_x = move_x * walk_speed;

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

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 4E8061E8
	/// @DnDParent : 54F42764
	/// @DnDArgument : "msg" "collisions_tilemap"
	show_debug_message(string(collisions_tilemap));

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 7372AA39
	/// @DnDParent : 54F42764
	/// @DnDArgument : "x" "x + (25 * sign(move_x)) "
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "collisions_tilemap"
	var l7372AA39_0 = instance_place(x + (25 * sign(move_x)) , y + 0, [collisions_tilemap]);
	if ((l7372AA39_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 280C4415
		/// @DnDComment : jump
		/// @DnDParent : 7372AA39
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += -jump_speed;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 7C6931D8
	/// @DnDComment : is there a gap in the floor?$(13_10)
	/// @DnDParent : 54F42764
	/// @DnDArgument : "x" "x + (30 * sign(move_x)) "
	/// @DnDArgument : "y" "y + 50"
	/// @DnDArgument : "object" "collisions_tilemap"
	var l7C6931D8_0 = instance_place(x + (30 * sign(move_x)) , y + 50, [collisions_tilemap]);
	if ((l7C6931D8_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 31279AFF
		/// @DnDComment : jump
		/// @DnDParent : 7C6931D8
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += -jump_speed;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 6311549F
	/// @DnDDisabled : 1
	/// @DnDParent : 54F42764
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