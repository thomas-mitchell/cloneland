/// @description

// Die
if (hp <= 0) {
	instance_destroy();	
}

// Move
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

x += inputX * moveSpeed;
y += inputY * moveSpeed;

// Face hero
image_angle = point_direction(x, y, oPlayer.x, oPlayer.y);
