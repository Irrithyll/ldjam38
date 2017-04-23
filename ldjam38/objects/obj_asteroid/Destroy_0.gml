/// @description Insert description here
// You can write your code in this editor

instance_create_layer(x-(sprite_width/2),y-(sprite_height/2),"Asteroids",obj_explosion);
if(value != 0){
	instance_create_layer(x-(sprite_width/2),y-(sprite_height/2),"Asteroids",obj_score);
	
	var object = instance_nearest(x-(sprite_width/2),y-(sprite_height/2),obj_score);

	object.value = value;
	obj_level_controller.score += value;
	obj_level_controller.asteroidsDestroyed++;
}


r = irandom_range(0, 50);

if(r == 24 || r = 42){
	instance_create_layer(0,0, "Turrets", obj_spaceship);
}