/// @description Insert description here
// You can write your code in this editor
if(dead == false && hit == false){
	instance_create_layer(x-(sprite_width/2),y-(sprite_height/2)-8,"Smoke",obj_smoke);
	instance_create_layer(x-(sprite_width/2),y-(sprite_height/2),"Turrets",obj_fire);
}

hit = true;
if(obj_sound.sound == true){
	audio_play_sound(explosion_explode, 10, false);
}