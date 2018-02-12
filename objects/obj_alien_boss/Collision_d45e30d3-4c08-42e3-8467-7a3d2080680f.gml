/// @description Take Damage
//if (obj_player.freq != freq) return;

if (myhp > 0){
	myhp -= 10;
	speed = 0;
	sprite_index = spr_bss_hrt;
}
else
{
	myhp = 0;
	tazed = true;
	sprite_index = spr_bss_hrt;
	image_angle = 270;
	killcount += 1
	if (killcount < 3) alarm[0] = 3*room_speed
	else{ 
	instance_create_layer(x-10, y + 10, "Items", obj_crowbar);
	audio_stop_sound(sound11);
	audio_play_sound(sound12, 5, false);
	}
}

//Shake effect
x = x + random_range(-4,4);
y = y + random_range(-4,4);