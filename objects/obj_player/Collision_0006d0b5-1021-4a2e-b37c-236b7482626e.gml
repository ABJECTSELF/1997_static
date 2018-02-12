/// @description 
global.lvl += 1;
maxEn += 50;
global.en = maxEn;

//Update and show GUI.
with (obj_control){
	sMessage = "Tazer Upgraded!";
	nDisplay = true;
	alarm[2] = room_speed * 5;
}


with (other)
	instance_destroy();