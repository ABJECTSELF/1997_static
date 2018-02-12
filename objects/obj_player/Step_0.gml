/// @description Movement and Firing
//Movement.
if playerIsDead != false return;

if global.endGame != false return;

if (global.hp < old_hp && !alarm[0]){
	alarm[0] = room_speed / 4;
	audio_play_sound(snd_pc_dmg, 10, false);
	sprite_index = spr_pc_hrt;
}

else if !alarm[0]{
	sprite_index = spr_pc_idle

if keyboard_check(vk_up) && y > 10{
	y -= mySpeed;
	sprite_index = spr_pc_wlkl;
}

if keyboard_check(vk_down) && y < room_height - 50{
	y += mySpeed;
	sprite_index = spr_pc_wlkr;
}

if keyboard_check(vk_left) && x > 10{
	x -= mySpeed;
	sprite_index = spr_pc_wlkl;
}

if keyboard_check(vk_right) && x < room_width - 10{
	x += mySpeed;
	sprite_index = spr_pc_wlkr;
	}
}

//Firing Tazer.
if (mouse_button = mb_left && global.en > 1)
   {
   if firing_taser == false{
        firing_taser = true;	   		
		instance_create_layer(obj_player.x, obj_player.y - 45, "Projectiles", obj_lightning);
		}
	with(obj_lightning){
		image_angle = point_direction(x, y, mouse_x, mouse_y);  
		x = obj_player.x;
		y = obj_player.y - 45;
		}
   sprite_index = spr_pc_aim;
   global.en -= 4;
   }
else{
	firing_taser = false;
	with(obj_lightning)
		instance_destroy();

	if (global.en < global.maxEn && mouse_button != mb_left) global.en += global.lvl;
}

//Changing Frequencies.
if (mouse_check_button_released(mb_right)){
	if freq == 3 freq = 1;
	else freq += 1;
}

