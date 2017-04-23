/// @description Insert description here
// You can write your code in this editor
if(obj_level_controller.gameOver == true && destroyed == true){
	instance_destroy(self);
}

if(obj_level_controller.gameOver && exploding == true && destroyed == false){
	obj_planet.sprite_index = spr_big_explosion;
	destroyed = true;
}
