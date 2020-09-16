/// @description Insert description here
// You can write your code in this editor
if (distance_to_object(obj_player) > 50){ 
	obj_player.carChat = false;
	return;
}

if (global.fndCrowbar && global.fndKeys && global.fndPlugs){
	obj_player.sprite_index = spr_colis_32_32;
	alarm[0] = 1*room_speed;
	global.endGame = true;
}
else obj_player.carChat = true;
