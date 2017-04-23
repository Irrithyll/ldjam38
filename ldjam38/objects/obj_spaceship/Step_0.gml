/// @description Insert description here
// You can write your code in this editor

move_towards_point(1100, 400, 5);
timer++;

if(x > 1050){
	instance_destroy(self);
}

if(timer >= 30){
	if(obj_sound.sound == true){
		audio_play_sound(spaceshipnoise, 10, false);
	}
	timer = 0;
}

