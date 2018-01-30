/// @description Set Variables
maxHP = 100
myhp = maxHP;
tazed = false;
vision = 300
myspeed = 5;
strength = 1;
isAttacking = false;
attackRate = 1.5;
freq = 3;
tag = "obj_alien_tport"
rdmx = 0;
rdmy = 0;

audio_play_sound(snd_tport_spwn, 10, false);
alarm[2] = 2*room_speed;