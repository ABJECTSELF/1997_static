/// @description Attack player
if (distance_to_object(obj_player) <= 10 && tazed != true) global.hp -= strength;
isAttacking = false;