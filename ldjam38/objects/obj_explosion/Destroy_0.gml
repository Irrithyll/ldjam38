/// @description Insert description here
// You can write your code in this editor
if(obj_level_controller.gameOver == false){
	randomize();

	r = irandom_range(0, 20);

	if(r == 4){
		//spawn a powerup
		instance_create_layer(x,y, "Asteroids", obj_powerup);
	}
}
