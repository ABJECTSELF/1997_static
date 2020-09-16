/// @description Take Damage
if (obj_player.freq != freq) return;

if (myhp > 0){
	myhp -= 10;
	speed = 0;
	sprite_index = spr_alien_tport_hrt;
	
	//Apply inverted shader at random frames.
	if (random(100)<20)
		inverted = true;
}
else
{
	myhp = 0;
	tazed = true;
	sprite_index = spr_alien_tport_hrt;
	image_angle = 270;
	alarm[0] = 5*room_speed
	audio_play_sound(snd_tport_dmg, 10, false);
}

//Shake effect
x = x + random_range(-4,4);
y = y + random_range(-4,4);