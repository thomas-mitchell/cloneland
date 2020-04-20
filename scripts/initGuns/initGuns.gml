// Auto run before first room loads
gml_pragma("global", "initGuns()");

// Items
enum GUN {
	PISTOL,
	SMG
}

initGun(GUN.PISTOL, "Pistol", 15, 14, 50, "Semi", 10, 20, 0.2, sndPistolShot, sndPistolReload);
initGun(GUN.SMG, "SMG", 30, 5, 50, "Auto", 3, 20, 0.2, sndSmgShot, sndPistolReload);
