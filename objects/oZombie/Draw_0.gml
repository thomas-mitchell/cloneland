
// Draw bounding box
//draw_rectangle_colour(bbox_left,bbox_top,bbox_right,bbox_bottom,c_red,c_red,c_red,c_red,false);

//draw_self();

// Draw sprite
// NOTE: Changing the objects image_angle directly causes the bounding box to grow and shrink,
// which makes zombies get stuck on each other
var sprite_angle = point_direction(x, y, oPlayer.x, oPlayer.y);
draw_sprite_ext( sZombie, -1, x, y, 1, 1, sprite_angle, c_white, 1 );





