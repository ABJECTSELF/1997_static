/// @description Set Variables
myspeed = 0.5;
strength = 1.0;
isActive = false;
lifespan = 10;
alarm[0]=room_speed*1;
alarm[1]=room_speed*lifespan;
audio_play_sound(snd_blast, 1, false);