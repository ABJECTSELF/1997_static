/// @description Movement and Firing
//Movement.
if keyboard_check(vk_left) x -= mySpeed;

if keyboard_check(vk_right) x += mySpeed;

if keyboard_check(vk_up) y -= mySpeed;

if keyboard_check(vk_down) y += mySpeed;

//Firing Tazer.
if (mouse_button = mb_left && global.en > 1)
   {
   if firing_taser == false{
        firing_taser = true;	   
		instance_create_layer(obj_player.x, obj_player.y, "Projectiles", obj_lightning);
		}
	with(obj_lightning){
		image_angle = point_direction(x, y, mouse_x, mouse_y);  
		x = obj_player.x;
		y = obj_player.y;
		}
   global.en -= 4;
   }
else{
	firing_taser = false;
	with(obj_lightning)
		instance_destroy();

	if (global.en < maxEn && mouse_button != mb_left) global.en += 1;
}

//Changing Frequencies.
if (mouse_check_button_released(mb_right)){
	if freq == 3 freq = 1;
	else freq += 1;
}