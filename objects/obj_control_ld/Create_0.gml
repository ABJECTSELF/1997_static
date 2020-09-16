/// @description Instantiate game variables & spawn creature

var oList=array_args(obj_alien_fast, obj_alien_slow, obj_alien_tport);
var nRepeat = irandom_range(1,5);
var xLoc, yLoc, iCreature;

for (i=0; i<nRepeat; i++){
	iCreature = oList[random(3)];
	xLoc = random(room_width);
	yLoc = random(room_height);
	instance_create_layer(xLoc, yLoc, "Instances", iCreature);
}

//Move on to the next screen
alarm[0] = room_speed*irandom_range(1,3);