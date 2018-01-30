/// @description Detect Player
//Get tazed
if (tazed = true){
	if (myhp < maxHP) myhp += 10;
	speed = 0;
	return;
}

if distance_to_object(obj_player) < vision && distance_to_object(obj_player) > 5 &&  myhp > 0{
	move_towards_point(obj_player.x, obj_player.y, myspeed)
}
else if distance_to_object(obj_player) >= vision {
//Wander
move_towards_point(rdmx, rdmy, myspeed);
}
else
speed = 0;

//
//When close, attack player.
if (distance_to_object(obj_player) <= 7){
	if (isAttacking == false){
		alarm[1] = attackRate*room_speed
		isAttacking = true;
		
		if (direction > 300 || direction < 45) sprite_index = spr_alien_tport_atkr;
		else if (direction > 46 && direction < 135) sprite_index = spr_alien_tport_atkf;
		else if (direction > 136 && direction < 225) sprite_index = spr_alien_tport_atkl;
		else if (direction > 226) sprite_index = spr_alien_tport_atkf;
	}	
	return;
}



//Change walking animations;
if speed = 0 return;

		if (direction > 300 || direction < 45) sprite_index = spr_alien_tport_wlkr;
		else if (direction > 46 && direction < 135) sprite_index = spr_alien_tport_wlkb;
		else if (direction > 136 && direction < 225) sprite_index = spr_alien_tport_wlkl;
		else if (direction > 226) sprite_index = spr_alien_tport_wlkf;