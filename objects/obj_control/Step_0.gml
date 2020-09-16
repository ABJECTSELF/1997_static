/// @description Make it rain!
effect_create_above(ef_rain, 0, 0, 10, c_gray);
if (obj_player.carChat == true)
	nAlpha -= 0.005;
else
	nAlpha = 1;