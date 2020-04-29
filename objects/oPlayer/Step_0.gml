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

#region Aiming
// Update aim angle
if (aimAngle > 0) {
	aimAngle -= global.gunAimSpeed[selectedGun];
	if (aimAngle < 0) {
		aimAngle = 0;	
	}
}

// Pass aim angle to reticle
reticle.aimAngle = aimAngle;
#endregion

#region Shooting
if (shotCooldown <= 0 && 
	reloadCooldown <= 0 &&
	currentAmmo > 0 &&
	(mouse_check_button_pressed(mb_left) || (global.gunFiringMode[selectedGun] == "Auto" && mouse_check_button(mb_left)))
	) {
	// Sound effect
	audio_play_sound(global.gunShotSound[selectedGun], 0, false);
	
	// Determine shot direction
	var aimDirection = point_direction(x, y, oReticle.x, oReticle.y);
	var aimOffset = random_range(-aimAngle/2, aimAngle/2);
	var shotDirection = aimDirection + aimOffset;
	
	// Create projectiles
	for(var index = 0; index < global.gunProjectilesPerShot[selectedGun]; index++) {
		var projectileMaxOffset = global.gunProjectileSpread[selectedGun];
		var projectileOffset = random_range(-projectileMaxOffset/2, projectileMaxOffset/2);
		projectileDirection = shotDirection + projectileOffset;
		
		var bullet = instance_create_layer(x, y, "Instances", oBullet);
		with (bullet) {
			x = other.x;
			y = other.y;
			direction = other.projectileDirection;
			damage = global.gunDamage[other.selectedGun];
		}
	}
	
	// Reduce ammo
	currentAmmo--;
	
	// Increase aim angle
	aimAngle += global.gunAimAngleShotIncrease[selectedGun];
	if (aimAngle > global.gunMaxAimAngle[selectedGun]) {
		aimAngle = global.gunMaxAimAngle[selectedGun];	
	}
	
	// Start cooldown
	shotCooldown = global.gunShotCooldown[selectedGun];
}
else if (shotCooldown > 0) {
	shotCooldown--;	
}
#endregion

#region Reloading
if (reloadCooldown == 0 && (currentAmmo == 0 || keyboard_check_pressed(ord("R"))) ) {
	// Sound effect
	audio_play_sound(global.gunReloadSound[selectedGun], 0, false);
	reloadCooldown = global.gunReloadCooldown[selectedGun];
}
else if (reloadCooldown > 0) {
	reloadCooldown--;
	if (reloadCooldown == 0) {
		currentAmmo = global.gunMaxAmmo[selectedGun];	
	}
}
#endregion

#region Switch gun
var newGun = noone;
if (selectedGun != GUN.PISTOL && keyboard_check_pressed(ord("1"))) {
	newGun = GUN.PISTOL;	
}
else if (selectedGun != GUN.SMG && keyboard_check_pressed(ord("2"))) {
	newGun = GUN.SMG;	
}
else if(selectedGun != GUN.SHOTGUN && keyboard_check_pressed(ord("3"))) {
	newGun = GUN.SHOTGUN;	
}

if (newGun != noone) {
	selectedGun = newGun;
	currentAmmo = global.gunMaxAmmo[newGun];
	shotCooldown = 0;
	reloadCooldown = 0;
}

#endregion