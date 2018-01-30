/// @description Get hurt
//If health is 0 or lower, game over.
if (global.hp < 0)
	{
	playerIsDead = true;
	}
	
else{
image_speed = 1;
sprite_index = spr_pc_idle // put the players idle sprite here
old_hp = global.hp;
}