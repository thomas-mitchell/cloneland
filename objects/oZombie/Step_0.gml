/// @description

// Die
if (hp <= 0) {
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

// Check movement is allowed
var movementAllowed = true;
var newX = x + inputX * moveSpeed;
var newY = y + inputY * moveSpeed;

// Check for collision with other zombie
if (place_meeting(newX, newY, oZombie)) {
	movementAllowed = false;	
}

// Check for collision with player
if (place_meeting(newX, newY, oPlayer)) {
	movementAllowed = false;	
}

// TODO - Buggy, zombies get stuck on each other
if (movementAllowed) {
	x += inputX * moveSpeed;
	y += inputY * moveSpeed;
}

// Face hero
//image_angle = point_direction(x, y, oPlayer.x, oPlayer.y);
