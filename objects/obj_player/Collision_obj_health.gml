/// @description Health pickup
if (global.hp < 10){
	global.hp += 10;
	with (other)
		instance_destroy();
	}	