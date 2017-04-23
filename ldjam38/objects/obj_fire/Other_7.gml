/// @description Insert description here
// You can write your code in this editor

animation_count++;

if(animation_count >= 3){
	instance_destroy(self);
	instance_destroy(instance_nearest(x, y, obj_tree));
}else if(animation_count >= 1){
	var instance = instance_nearest(x, y, obj_tree);
	instance.dead = true;
}