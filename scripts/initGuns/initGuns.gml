// Auto run before first room loads
gml_pragma("global", "initGuns()");

// Items
enum GUN {
	PISTOL,
	SMG,
	SHOTGUN
}

initGun(GUN.PISTOL, "Pistol", 15, 14, 50, "Semi", 10, 20, 0.2, 1, 0, sndPistolShot, sndPistolReload);
initGun(GUN.SMG, "SMG", 30, 5, 50, "Auto", 3, 20, 0.2, 1, 0, sndSmgShot, sndPistolReload);
initGun(GUN.SHOTGUN, "Shotgun", 5, 15, 50, "Semi", 15, 30, 0.2, 10, 10, sndShotgunShot, sndShotgunReload);
