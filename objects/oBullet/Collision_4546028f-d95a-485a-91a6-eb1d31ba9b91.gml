
// Do damage
other.hp -= damage;

// Boost target
var knockback = 1.4;	// TODO Set up per weapon knockback
var boostX = lengthdir_x(knockback, direction);
var boostY = lengthdir_y(knockback, direction);

other.boostX = boostX;
other.boostY = boostY;

instance_destroy();