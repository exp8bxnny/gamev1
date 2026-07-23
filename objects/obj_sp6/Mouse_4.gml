/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
/// @DnDVersion : 1
/// @DnDHash : 018A575F
/// @DnDArgument : "x" "1"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "not" "1"
var l018A575F_0 = place_empty(x + 1, y + 0);if (l018A575F_0){	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 784D81F1
	/// @DnDParent : 018A575F
	/// @DnDArgument : "x" "200"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "0"
	/// @DnDArgument : "y_relative" "1"
	x += 200;y += 0;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5AB8851D
else{	/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
	/// @DnDVersion : 1
	/// @DnDHash : 4741E8F6
	/// @DnDParent : 5AB8851D
	/// @DnDArgument : "x" "-1"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "not" "1"
	var l4741E8F6_0 = place_empty(x + -1, y + 0);if (l4741E8F6_0){	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 1C705529
		/// @DnDParent : 4741E8F6
		/// @DnDArgument : "x" "-200"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "0"
		/// @DnDArgument : "y_relative" "1"
		x += -200;y += 0;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3F5C2E01
	/// @DnDParent : 5AB8851D
	else{	/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
		/// @DnDVersion : 1
		/// @DnDHash : 2E2EB964
		/// @DnDParent : 3F5C2E01
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "not" "1"
		var l2E2EB964_0 = place_empty(x + 0, y + 1);if (l2E2EB964_0){	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 6B8AD7CE
			/// @DnDParent : 2E2EB964
			/// @DnDArgument : "x" "0"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "200"
			/// @DnDArgument : "y_relative" "1"
			x += 0;y += 200;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 421FDCD9
		/// @DnDParent : 3F5C2E01
		else{	/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
			/// @DnDVersion : 1
			/// @DnDHash : 0D9F73DD
			/// @DnDParent : 421FDCD9
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "-1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "not" "1"
			var l0D9F73DD_0 = place_empty(x + 0, y + -1);if (l0D9F73DD_0){	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
				/// @DnDVersion : 1
				/// @DnDHash : 5DF6CA4F
				/// @DnDParent : 0D9F73DD
				/// @DnDArgument : "x" "0"
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y" "-200"
				/// @DnDArgument : "y_relative" "1"
				x += 0;y += -200;}}}}