/// @description Insert description here
// You can write your code in this editor

// attempt to fire a projectile!
var ROTATION_OFFSET = -90;
if(timer >= timer_limit){
	instance_create_layer(x+lengthdir_x(32, image_angle-ROTATION_OFFSET), y+lengthdir_y(32, image_angle-ROTATION_OFFSET), "Projectiles", obj_projectile);
	timer = 0;
}
