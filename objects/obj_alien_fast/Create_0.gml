/// @description Set Variables
maxHP = 70
myhp = maxHP;
tazed = false;
vision = 300
myspeed = 9;
strength = 1.5;
isAttacking = false;
attackRate = 1.2;
freq = 1;
rdmx = 0;
rdmy = 0;
tag = "obj_alien_fast"
inverted = false;

//Find first random point to walk to.
if (x > room_width || x < 0 || y > room_height || y < 0){
	rdmx = 500
	rdmy = 500
	}
else
	{
	rdmx = random(room_width);
	rdmy = random(room_height);
	}

if (instance_exists(obj_player))
	audio_play_sound(snd_fast_spwn, 10, false);
alarm[2] = 2*room_speed;