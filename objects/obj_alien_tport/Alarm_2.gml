/// @description Insert description here

rdmx = 0;
rdmy = 0;

if (x > room_width || x < 0 || y > room_height || y < 0){
	rdmx = 500
	rdmy = 500
}
else
	{
	rdmx = random(room_width);
	rdmy = random(room_height);
	}
//After a few seconds, change wander location.
alarm[2] = random(10)*room_speed
	