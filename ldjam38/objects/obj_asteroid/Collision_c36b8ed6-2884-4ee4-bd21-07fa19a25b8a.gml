/// @description Insert description here
// You can write your code in this editor

durability -= 1;
if(obj_sound.sound == true){
	audio_play_sound(explosion_hit, 10, false);
}
if(durability <= 0){
	instance_destroy(self);
	if(obj_sound.sound == true){
		audio_play_sound(explosion_explode, 10, false);
	}
}