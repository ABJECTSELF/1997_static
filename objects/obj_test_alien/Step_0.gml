/// @description Detect Player
if distance_to_object(obj_player) < vision && distance_to_object(obj_player) > 5 &&  myhp > 0{
	move_towards_point(obj_player.x, obj_player.y, myspeed)
}
else speed = 0;

if (tazed = true){
	if (myhp < 100) myhp += 10;
	speed = 0;
}

//When close, attack player.
if (distance_to_object(obj_player) <= 10){
	if (isAttacking == false){
		alarm[1] = attackRate*room_speed
		isAttacking = true;
	}	
}