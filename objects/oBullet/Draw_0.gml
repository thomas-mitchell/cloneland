
// Draw bullet effect
draw_primitive_begin(pr_linelist);
	draw_vertex_colour(oPlayer.x, oPlayer.y, c_white, 0);
	draw_vertex_colour(x, y, c_white, 0.7);
draw_primitive_end();


// Draw bullet
draw_self();
