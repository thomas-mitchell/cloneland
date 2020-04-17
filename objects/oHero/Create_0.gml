/// @description

moveSpeed = 1;
dir = 0;

moveX = 0;
moveY = 0;

// Create reticle
reticle = instance_create_layer(mouse_x, mouse_y, "Instances", oReticle);

bulletDirection = 0; // Direction to fire bullet