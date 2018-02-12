/// @description Find Spark plugs
global.fndPlugs = true;
global.xRate -= 5;
global.xLimit += 10;

//Play sound indicator
audio_play_sound(snd_update, 8, false);

//Update and show GUI.
with (obj_control){
	sMessage = "Found Spark Plugs!";
	nDisplay = true;
	alarm[2] = room_speed * 5;
}


//Destroy object
with (other)
	instance_destroy();