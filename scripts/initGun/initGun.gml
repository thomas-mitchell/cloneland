
/// @arg gun
/// @arg name
/// @arg damage
/// @arg maxAmmo
/// @arg shotCooldown
/// @arg reloadCooldown
/// @arg firingMode
/// @arg aimAngleShotIncrease
/// @arg maxAimAngle
/// @arg aimSpeed
/// @arg projectilesPerShot
/// @arg projectileSpread
/// @arg shotSound
/// @arg reloadSound

var _gun = argument[0];

global.gunName[_gun] = argument[1];
global.gunDamage[_gun] = argument[2]
global.gunMaxAmmo[_gun] = argument[3];
global.gunShotCooldown[_gun] = argument[4]
global.gunReloadCooldown[_gun] = argument[5];
global.gunFiringMode[_gun] = argument[6];
global.gunAimAngleShotIncrease[_gun] = argument[7];
global.gunMaxAimAngle[_gun] = argument[8];
global.gunAimSpeed[_gun] = argument[9];
global.gunProjectilesPerShot[_gun] = argument[10];
global.gunProjectileSpread[_gun] = argument[11];
global.gunShotSound[_gun] = argument[12];
global.gunReloadSound[_gun] = argument[13];