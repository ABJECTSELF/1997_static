/// @description Set Variables
maxHP = 100
myhp = maxHP;
tazed = false;
vision = 300
myspeed = 5;
strength = 1;
isAttacking = false;
attackRate = 2.5;
freq = 3;
tag = "obj_alien_tport"
rdmx = 0;
rdmy = 0;
inverted = false;
attack_range = 200;

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
	audio_play_sound(snd_tport_spwn, 10, false);
alarm[2] = 2*room_speed;