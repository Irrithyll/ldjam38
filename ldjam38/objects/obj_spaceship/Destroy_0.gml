/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x-(sprite_width/2),y-(sprite_height/2),"Asteroids",obj_explosion);
if(obj_sound.sound == true){
	audio_play_sound(explosion_explode,10,false);
}

instance_create_layer(x-(sprite_width/2),y-(sprite_height/2),"Asteroids",obj_score);
var object = instance_nearest(x-(sprite_width/2),y-(sprite_height/2),obj_score);

object.value = value;
obj_level_controller.score += value;
obj_level_controller.shipsDestroyed++;