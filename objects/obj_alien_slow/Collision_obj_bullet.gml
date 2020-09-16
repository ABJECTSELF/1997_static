/// @description Get hurt via friendly fire
if (!other.isActive || tazed == true)
	return;


instance_destroy(other);

if (myhp > 0){
	myhp -= 10;
	myspeed=0;
	sprite_index = spr_alien_slow_hrt;
	
	//Apply inverted shader.
	inverted = true;
	
	alarm[3] = 3*room_speed;
}
else
{
	myhp = 0;
	tazed = true;
	sprite_index = spr_alien_slow_hrt;
	image_angle = 270;
	alarm[0] = 5*room_speed
	audio_play_sound(snd_slw_dmg, 10, false);
}