/// @description Fast collisions

if (fastCollision && collision_line(xprevious, yprevious, x, y, oZombie, false, false)) {
	var zombie = collision_line_first(xprevious, yprevious, x, y, oZombie, false, false);
	//event_perform(ev_collision, zombie);
	zombie.hp -= damage;
	instance_destroy();
}

