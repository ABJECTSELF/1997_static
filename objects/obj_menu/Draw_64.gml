/// @description Draw main menu
var htotal = display_get_gui_width();
var vtotal = display_get_gui_height();
var hcenter = htotal/2;
var vcenter = vtotal/2;
var button;

draw_set_halign(fa_center);
draw_set_colour(c_white);
draw_set_font(fnt_notify);

//Draw title;
draw_sprite(spr_title, sprite_index, hcenter, vcenter*.75);
//Draw title shadow;
draw_sprite_ext(spr_title, sprite_index, hcenter*random_range(0.99,1.01), (vcenter*.75)*random_range(0.99,1.01), 
				image_xscale*random_range(0.95,1.05), image_yscale*random_range(0.95,1.05), image_angle, c_white, random(0.35));

//Start Game button
if point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),
							hcenter-75, vcenter-25,
							hcenter+75, vcenter+25){
		draw_set_color(c_yellow)
		if mouse_check_button_released(mb_left){
				audio_stop_sound(ost_menu);
				room_goto_next();
			}
		}								
	draw_text(
		hcenter,
		vcenter, "Start Game");

draw_set_color(c_white);

if point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),
							hcenter-50, vcenter+50,
							hcenter+50, vcenter+75){
		draw_set_color(c_yellow)
		if mouse_check_button_released(mb_left)
			game_end();
		}								
	draw_text(
		hcenter,
		vcenter+50, "Quit");		