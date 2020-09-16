/// @description
energy = (global.en / global.maxEn) * 100;

draw_healthbar(618, 700, 866, 725, hp * 10, c_black, c_red, c_red, 0, true, true);
draw_healthbar(610, 730, 860, 775, energy, c_black, c_aqua, c_aqua, 0, true, true);
draw_sprite(spr_ui_bar, spr_ui_bar, view_xview[0] + 512, view_yview[0] + 768);
draw_sprite(spr_tazgun, spr_tazgun, 955, 730);

//Draw regular text
draw_set_colour(c_white);
draw_set_font(fnt_status);
draw_text(900, 712, "Lvl. " + string(global.lvl));

//Change color based on frequency.
switch(obj_player.freq){
	case 1: 
		draw_text_color(895, 727, "Freq. " + string(obj_player.freq), c_aqua,c_aqua,c_aqua,c_aqua, 1);
		break;
	case 2:
		draw_text_color(895, 727, "Freq. " + string(obj_player.freq), c_lime,c_lime,c_lime,c_lime, 1);
		break;
	case 3:
		draw_text_color(895, 727, "Freq. " + string(obj_player.freq), c_orange,c_orange,c_orange,c_orange, 1);
		break;
}
//draw_text_ext_color(915, 727, "Freq. " + string(obj_player.freq), 5, 999, vColor, 1);
	
display_set_gui_size(1024, 768);

//Draw dialogue
draw_set_colour(c_white);
draw_set_font(fnt_chat);
draw_set_halign(fa_center);
draw_set_alpha(nAlpha);
/*if (obj_player.introChat == true){
draw_text(obj_player.x + 100, obj_player.y + 100, "They found me!");
draw_text(obj_player.x + 100, obj_player.y + 112, "I have to escape!");
}
*/
if (obj_player.carChat == true){
draw_text(display_get_gui_width()/2, display_get_gui_height()*0.25, "This car needs a Key,");
draw_text(display_get_gui_width()/2, display_get_gui_height()*0.28, "Spark Plugs and Crowbar");
}
draw_set_alpha(1);
//Finding Items
if global.fndKeys
draw_sprite(spr_keys, spr_keys, 398, 745);

if global.fndPlugs
draw_sprite(spr_sparkplugs, spr_sparkplugs, 470, 745);

if global.fndCrowbar
draw_sprite(spr_crowbar, spr_crowbar, 550, 745);

//The following only happens when the player dies.
if obj_player.playerIsDead == true{
	draw_sprite(spr_ui_popup, spr_ui_popup, display_get_gui_width()/2, display_get_gui_height()/2);
	draw_set_colour(c_white);
	draw_set_font(fnt_status);
	draw_text(460, 440, "R - Restart");
	draw_text(570, 440, "Q - Quit");

	draw_set_font(fnt_notify);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text(display_get_gui_width()/2, display_get_gui_height()/2, "You died!");
}