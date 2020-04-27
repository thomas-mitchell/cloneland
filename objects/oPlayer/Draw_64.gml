
// Draw ammo counter
draw_set_font(fForward);

// Draw ammo count
draw_text(10, 10, "Ammo: " + string(currentAmmo));

// Draw weapon name
draw_text(10, 180, global.gunName[selectedGun]);