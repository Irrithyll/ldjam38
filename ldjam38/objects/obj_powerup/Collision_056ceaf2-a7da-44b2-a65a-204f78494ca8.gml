/// @description Insert description here
// You can write your code in this editor
if(hit == false){
	obj_turret.powerup = powerup;
	if(obj_sound.sound == true){
		audio_play_sound(powerupnoise, 10, false);
	}
	obj_level_controller.powerUpsObtained++;

	sprite_index = spr_powerup_collect_anim;


	hit = true;
}
