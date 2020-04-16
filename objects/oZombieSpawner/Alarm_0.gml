/// @description Spawn zombie

var spawnX = irandom_range(0, room_width);
var spawnY = irandom_range(0, room_height);

var side = irandom_range(0, 3);

switch (side) {
	case 0:
		// Top
		spawnY = 0;
	break;
	case 1:
		// Right
		spawnX = room_width;
	break;
	case 2:
		// Bottom
		spawnY = room_height;
	break;
	case 3:
		// Left
		spawnX = 0;
	break;
}

instance_create_layer(spawnX, spawnY, "Instances", oZombie);


// Reset alarm
alarm[0] = frameRate * 2;