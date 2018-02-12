/// @description Health pickup
if (global.hp >= 10) return;

//Update and show GUI.
with (obj_control){
	sMessage = "Health Restored!";
	nDisplay = true;
	alarm[2] = room_speed * 5;
}


global.hp += 10;
with (other)
	instance_destroy();