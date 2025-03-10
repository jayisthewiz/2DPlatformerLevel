/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 319808F0
/// @DnDComment : are we jumping$(13_10)
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "1"
if(move_y < 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4DF16142
	/// @DnDParent : 319808F0
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_enemy1_jump"
	/// @DnDSaveInfo : "spriteind" "spr_enemy1_jump"
	sprite_index = spr_enemy1_jump;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0352D6B5
/// @DnDComment : are we jumping$(13_10)
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "1"
if(move_y < 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 01794C2E
	/// @DnDParent : 0352D6B5
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_enemy1_jump"
	/// @DnDSaveInfo : "spriteind" "spr_enemy1_jump"
	sprite_index = spr_enemy1_jump;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4B8B370E
/// @DnDComment : are we jumping$(13_10)
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "2"
if(move_y > 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 63766661
	/// @DnDParent : 4B8B370E
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_enemy1_idle"
	/// @DnDSaveInfo : "spriteind" "spr_enemy1_idle"
	sprite_index = spr_enemy1_idle;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 7AC6BB89
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collisions_tilemap"
var l7AC6BB89_0 = instance_place(x + 0, y + 2, [collisions_tilemap]);
if ((l7AC6BB89_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 45891478
	/// @DnDComment : going left$(13_10)
	/// @DnDParent : 7AC6BB89
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-1"
	if(move_x <= -1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 289CAA51
		/// @DnDParent : 45891478
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_enemy1_walk"
		/// @DnDSaveInfo : "spriteind" "spr_enemy1_walk"
		sprite_index = spr_enemy1_walk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 37200BAC
		/// @DnDParent : 45891478
		/// @DnDArgument : "xscale" "-1 * abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = -1 * abs(image_xscale);
		image_yscale = image_yscale;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0EA071E0
	/// @DnDComment : going right$(13_10)
	/// @DnDParent : 7AC6BB89
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(move_x >= 1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6F4FC67B
		/// @DnDParent : 0EA071E0
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_enemy1_walk"
		/// @DnDSaveInfo : "spriteind" "spr_enemy1_walk"
		sprite_index = spr_enemy1_walk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 16D43EF2
		/// @DnDParent : 0EA071E0
		/// @DnDArgument : "xscale" "1 * abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = 1 * abs(image_xscale);
		image_yscale = image_yscale;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4ED704C6
	/// @DnDComment : going right$(13_10)
	/// @DnDParent : 7AC6BB89
	/// @DnDArgument : "var" "move_x"
	if(move_x == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 3681EF1E
		/// @DnDParent : 4ED704C6
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_enemy1_idle"
		/// @DnDSaveInfo : "spriteind" "spr_enemy1_idle"
		sprite_index = spr_enemy1_idle;
		image_index += 0;
	}
}