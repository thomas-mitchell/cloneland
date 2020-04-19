/// @description

moveSpeed = 1;
dir = 0;

moveX = 0;
moveY = 0;

// Create reticle
reticle = instance_create_layer(mouse_x, mouse_y, "Instances", oReticle);
aimAngle = 20;

bulletDirection = 0; // Direction to fire bullet

// Gun settings
pistolAmmoMax = 15;
pistolShotCooldown = 20;	// In frames
pistolShotSound = sndPistolShot;
pistolReloadTime = 50;	// In frames
pistolReloadSound = sndPistolReload;

// Gun related variables
shotCooldown = 0;
currentAmmo = pistolAmmoMax;
reloadCooldown = 0;