/// @description Take Damage
if (obj_player.freq != freq) return;

if (myhp > 0){
	myhp -= 10;
	speed = 0;
}
else
{
	myhp = 0;
	tazed = true;
	alarm[0] = 5*room_speed
}

//Shake effect
x = x + random_range(-4,4);
y = y + random_range(-4,4);