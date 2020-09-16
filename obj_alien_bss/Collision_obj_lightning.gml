/// @description Take Damage
var nDropX = 0;
var nDropY = 0;

//if (obj_player.freq != freq) return;

if (myhp > 0){
	myhp -= 10;
	speed = myspeed/2;
	sprite_index = spr_bss_hrt;
	
	//Apply inverted shader at random frames.
	if (random(100)<20)
		inverted = true;
}
else if (myhp <= 0 && tazed == false)
{
	myhp = 0;
	tazed = true;
	sprite_index = spr_bss_hrt;
	image_angle = 270;
	//alarm[0] = 5*room_speed
	//audio_play_sound(snd_slw_dmg, 10, false);
	
	//Find new x and y location near boss.
	nDropX = x+irandom_range(-50,50);
	nDropY = y+irandom_range(-50,50);
	
	//Check for existing entity at location.
	while (!place_free(nDropX, nDropY)){
		nDropX = x+irandom_range(-50,50);
		nDropY = y+irandom_range(-50,50);
		}
	//Drop crowbar object	
	instance_create_layer(nDropX, nDropY, "Player", obj_crowbar);	
}

//Shake effect
x = x + random_range(-4,4);
y = y + random_range(-4,4);