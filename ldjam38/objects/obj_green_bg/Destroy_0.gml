/// @description Insert description here
// You can write your code in this editor

// play a bunch of explosion animations
var r1 = irandom_range(-16, 32);
var r2 = irandom_range(-16, 32);
instance_create_layer(obj_planet.x-(obj_planet.sprite_width/2)+r1,obj_planet.y-(obj_planet.sprite_height/2)+r2,"Asteroids",obj_explosion);	


	
// play a big explosion animation
	