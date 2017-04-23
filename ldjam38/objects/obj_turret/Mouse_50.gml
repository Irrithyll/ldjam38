/// @description Insert description here
// You can write your code in this editor
var ROTATION_OFFSET = -90;
if(timer >= timer_limit){
	if(powerup == "threeshot"){
	show_debug_message("powerup threeshot fire 3 shots");
		instance_create_layer(x+lengthdir_x(32, image_angle-ROTATION_OFFSET+10), y+lengthdir_y(32, image_angle-ROTATION_OFFSET+10), "Projectiles", obj_projectile);
		timer = 0;
	
		instance_create_layer(x+lengthdir_x(32, image_angle-ROTATION_OFFSET-10), y+lengthdir_y(32, image_angle-ROTATION_OFFSET-10), "Projectiles", obj_projectile);
		timer = 0;

	}
	instance_create_layer(x+lengthdir_x(32, image_angle-ROTATION_OFFSET), y+lengthdir_y(32, image_angle-ROTATION_OFFSET), "Projectiles", obj_projectile);
	timer = 0;
	
	if(obj_sound.sound == true){
		audio_play_sound(laser_3, 10, false);
	}
	
}
