// Auto run before first room loads
gml_pragma("global", "initGuns()");

// Items
enum GUN {
	PISTOL,
	SMG
}

initGun(GUN.PISTOL, "Pistol", 15, 20, 50, "Semi", sndPistolShot, sndPistolReload);
initGun(GUN.SMG, "SMG", 30, 5, 50, "Auto", sndSmgShot, sndPistolReload);
