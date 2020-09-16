/// @description Draw loading label
display_set_gui_size(1024, 768);
draw_set_colour(c_white);
draw_set_font(fnt_notify);
draw_set_halign(fa_center);
var sLoading = array_args("L","o", "a", "d", "i", "n", "g", ".", ".", ".");
var xOrigin = (display_get_gui_width()/2)-80;
for (i=0; i<10; i++){
	xOrigin += 20;
	draw_text(xOrigin, display_get_gui_height()/random_range(1.985, 2.015), sLoading[i]);
}