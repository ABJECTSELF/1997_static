/// @description Spawn Enemy
if (instance_number (obj_alien_fast) + instance_number (obj_alien_slow) + instance_number (obj_alien_tport)) > global.xLimit return;

locX = random(room_width/2 + view_xview);
locY = random(room_height/2 + view_yview);

//while (locX > room_width) locX = random(room_width/2 + view_xview);
//while (locY > room_height) locY = random(room_height/2 + view_yview);

oEnemy = itemList[random(3)]

instance_create_layer(locX, locY, "Enemies", oEnemy);

alarm[0] = (global.xRate*random_range(.75, 1.25)) * room_speed;