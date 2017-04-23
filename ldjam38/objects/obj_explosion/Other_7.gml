/// @description Insert description here
// You can write your code in this editor
if(obj_level_controller.gameOver == true){
	obj_level_controller.explosionCount++;
	if(obj_level_controller.explosionCount <= obj_level_controller.maxExplosions){
		var r1 = irandom_range(-16, 32);
		var r2 = irandom_range(-16, 32);
		instance_create_layer(obj_planet.x-(obj_planet.sprite_width/2)+r1,obj_planet.y-(obj_planet.sprite_height/2)+r2,"Asteroids",obj_explosion);	
		if(obj_sound.sound == true){
			audio_play_sound(explosion_explode, 10, false);
		}
	}else{
		obj_planet.exploding = true;
	}
}
instance_destroy(self);