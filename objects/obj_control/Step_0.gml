/// @description Make it rain!
effect_create_above(ef_rain, 0, 0, 10, c_gray);
if (obj_player.introChat == true){
draw_text(obj_player.x + 100, obj_player.y + 100, "They found me!");
draw_text(obj_player.x + 100, obj_player.y + 112, "I have to escape!");
}