/// @description

#region Movement

var _right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var _left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var _up = keyboard_check(vk_up) || keyboard_check(ord("W"));
var _down = keyboard_check(vk_down) || keyboard_check(ord("S"));

var _inputX = _right - _left;
var _inputY = _down - _up;

moveX = _inputX * moveSpeed;
moveY = _inputY * moveSpeed;

// Check new position is valid and update
var newX = x + moveX;
var newY = y + moveY;

if (newX > 12 && newX < room_width - 12) {
	x = newX;	
}
if (newY > 12 && newY < room_height - 12) {
	y = newY;	
}


#endregion

#region Facing

dir = point_direction(x, y, mouse_x, mouse_y);
image_angle = dir;

#endregion

#region Shooting

if (mouse_check_button_pressed(mb_left)) {
	// Sound effect
	audio_play_sound(sndPistolShot, 0, false);
	
	// Determine bullet target
	var targetBaseX = reticle.x;
	var targetBaseY = reticle.y;
	var targetRadius = reticle.radius;
	var targetDirection = irandom_range(0, 359);
	var targetX = targetBaseX + lengthdir_x(targetRadius, targetDirection);
	var targetY = targetBaseY + lengthdir_y(targetRadius, targetDirection);
	bulletDirection = point_direction(x, y, targetX, targetY);
	
	// Create bullet
	var bullet = instance_create_layer(x, y, "Instances", oBullet);
	with (bullet) {
		x = other.x;
		y = other.y;
		direction = other.bulletDirection;	
	}
}

#endregion