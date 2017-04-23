/// @description Insert description here
// You can write your code in this editor

if(music == true){
	music = false;
	sprite_index = spr_music;
	audio_stop_all();
	
}else{
	music = true;
	sprite_index = spr_music_1;
	audio_play_sound(track_01, 10, true);
}