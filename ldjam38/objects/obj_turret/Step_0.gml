var ROTATION_OFFSET = -90;
powerupTimer--;

timer++;


// check mouse position
image_angle = point_direction(x, y, mouse_x, mouse_y) + ROTATION_OFFSET;

if(powerup == "heart"){
	// restore some health
	if(instance_exists(obj_shield)){
		instance_destroy(obj_shield);
	}
	if(obj_planet.durability >= obj_planet.maxDurability){
		obj_planet.durability = obj_planet.maxDurability;
	}else{
		obj_planet.durability++;
	}
	powerup = "";
	powerupTimer = 0;
}else if(powerup == "shield" && isPower == false){
	// add a shield
	if(instance_exists(obj_shield)){
		instance_destroy(obj_shield);
	}
	instance_create_layer(x,y,"ASTEROIDS",obj_shield);
	shield = instance_nearest(x,y,obj_shield);
	
	shield.image_angle = image_angle;
	powerupTimer = 300;
	isPower = true;
	powerup = "";
}else if(powerup == "threeshot" && isPower == false ){
	// allow three shot
	if(instance_exists(obj_shield)){
		instance_destroy(obj_shield);
	}
	powerupTimer = 300;
	isPower = true;
	show_debug_message("powerup threeshot");
}


if(powerupTimer <= 0 && isPower == true){
	show_debug_message(powerup);
	show_debug_message("powerup clear");
	powerup = "";
	if(instance_exists(obj_shield)){
		instance_destroy(obj_shield);
	}
	isPower = false;
}