/// @description Insert description here
// You can write your code in this editor
durability = 2;
moveSpeed = random_range(obj_level_controller.minMoveSpeed, obj_level_controller.maxMoveSpeed);
rotateSpeed = random_range(0, 3);
value = 200;

r = random_range(0, 100);

if(r < 25){
	sprite_index = spr_asteroid_1;
	durability = 1;
	value = 200;
}else if(r > 25 && r < 50){
	sprite_index = spr_asteroid_2;
	durability = 2;
	value = 250;
}else if(r > 50 && r < 75){
	sprite_index = spr_asteroid_3;
	durability = 3;
	value = 500;
}else{
	sprite_index = spr_asteroid_4;
	durability = 4;
	value = 1000;
}