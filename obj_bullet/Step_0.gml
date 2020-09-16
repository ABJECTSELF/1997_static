/// @description Insert description here
///effect_create_above(ef_explosion, x, y, 2, c_purple);
var playdir = point_direction(x, y, obj_player.x, obj_player.y);
motion_add(playdir, myspeed);

//Destroy bullets if they go out of camera range.
if (x < camera_get_view_x(view_camera[0])-10 || x > camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])+10)
	instance_destroy(self);
if (y < camera_get_view_y(view_camera[0])-10 || y > camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])+10)
	instance_destroy(self);