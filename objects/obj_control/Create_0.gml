/// @description Begin spawns.
//Declare hp for pc.
globalvar hp;
global.hp=10;

global.xRate = 20;
global.xLimit = 10;
obj_player.introChat = true;

alarm[0] = (global.xRate*random_range(.75, 1.25)) * room_speed;
//alarm[1] = (10 * room_speed);

audio_play_sound(sound12, 5, true);

itemList[0] = obj_alien_fast;
itemList[1] = obj_alien_slow;
itemList[2] = obj_alien_tport;

//Set GUI text alpha
nAlpha = 1;
nAlpha = clamp(nAlpha, 0, 1);