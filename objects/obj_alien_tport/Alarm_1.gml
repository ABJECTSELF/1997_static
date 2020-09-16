/// @description Attack player
//This enemy fires a projectile rather than damaging the player directly.
if (!tazed)
	instance_create_depth(x, y-30, depth-1, obj_bullet);

isAttacking = false;