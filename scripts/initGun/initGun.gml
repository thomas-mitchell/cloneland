
/// @arg gun
/// @arg name
/// @arg maxAmmo
/// @arg shotCooldown
/// @arg reloadCooldown
/// @arg firingMode
/// @arg shotSound
/// @arg reloadSound

var _gun = argument[0];

global.gunName[_gun] = argument[1];
global.gunMaxAmmo[_gun] = argument[2];
global.gunShotCooldown[_gun] = argument[3]
global.gunReloadCooldown[_gun] = argument[4];
global.gunFiringMode[_gun] = argument[5];
global.gunShotSound[_gun] = argument[6];
global.gunReloadSound[_gun] = argument[7];