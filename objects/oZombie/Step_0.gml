/// @description

// Die
if (hp <= 0) {
	var deadZombie = instance_create_layer(x, y, "Bodies", oZombieDead);
	var sprite_angle = point_direction(x, y, oPlayer.x, oPlayer.y);
	deadZombie.image_angle = sprite_angle;
	instance_destroy();	
}

// Determine desired movement
if (instance_exists(oPlayer)) {
	targetX = oPlayer.x;
	targetY = oPlayer.y;
}
	
if (point_distance(x, y, targetX, targetY) > moveSpeed) {
	inputX = clamp(targetX - x, -1, 1);
	inputY = clamp(targetY - y, -1, 1);
}
else {
	inputX = 0;
	inputY = 0;
}

// Get movement speed
var moveX = inputX * moveSpeed;
var moveY = inputY * moveSpeed;

// Boost
moveX += round(boostX);
moveY += round(boostY);

boostX = lerp(boostX, 0, 0.1);
boostY = lerp(boostY, 0, 0.1);

// Check movement is allowed
var movementAllowed = true;
var newX = x + moveX;
var newY = y + moveY;

// Check for collision with other zombie
if (place_meeting(newX, newY, oZombie)) {
	movementAllowed = false;	
}

// Check for collision with player
if (place_meeting(newX, newY, oPlayer)) {
	movementAllowed = false;	
}


if (movementAllowed) {
	x = newX;
	y = newY;
}

// Face hero
//image_angle = point_direction(x, y, oPlayer.x, oPlayer.y);
