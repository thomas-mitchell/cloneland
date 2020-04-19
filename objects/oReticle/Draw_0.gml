
// Determine aim triangle endpoint
var aimDirection = point_direction(oPlayer.x, oPlayer.y, x, y);

// Determine aim triangle points
var aimTriangleClockPointX = oPlayer.x + lengthdir_x(aimTriangleLength, aimDirection - aimAngle/2);
var aimTriangleClockPointY = oPlayer.y + lengthdir_y(aimTriangleLength, aimDirection - aimAngle/2);
var aimTriangleCounterClockPointX = oPlayer.x + lengthdir_x(aimTriangleLength, aimDirection + aimAngle/2);
var aimTriangleCounterClockPointY = oPlayer.y + lengthdir_y(aimTriangleLength, aimDirection + aimAngle/2);

// Draw aim triangle
draw_set_color(c_green);
draw_set_alpha(0.5);
draw_triangle(oPlayer.x, oPlayer.y, aimTriangleCounterClockPointX, aimTriangleCounterClockPointY, aimTriangleClockPointX, aimTriangleClockPointY, false);
draw_set_color(c_white);
draw_set_alpha(1);

// Calculate reticle radius
var reticleDistance = point_distance(oPlayer.x, oPlayer.y, x, y);
var reticleClockEdgePointX = oPlayer.x + lengthdir_x(reticleDistance, aimDirection - aimAngle/2);
var reticleClockEdgePointY = oPlayer.y + lengthdir_y(reticleDistance, aimDirection - aimAngle/2);
//draw_point(reticleClockEdgePointX, reticleClockEdgePointY);
var reticleRadius = point_distance(x, y, reticleClockEdgePointX, reticleClockEdgePointY);

// Draw the circle surrounding the reticle
draw_set_color(c_white);
draw_circle(x, y, reticleRadius, true);

// Draw the inner reticle sprite
draw_self();
