/// @description Insert description here
// You can write your code in this editor
randomize();
score = 0;
timerSecond = 30;
bottomTimeLimit = timerSecond * 1;
topTimeLimit = timerSecond * 5;
asteroidsDestroyed = 0;
increase = 0;
minMoveSpeed = 0.5;
maxMoveSpeed = 1.5;
gameOver = false;

spawnTimer = 0;
spawnTimerLimit = irandom_range(bottomTimeLimit, topTimeLimit);

draw_set_font(test);

explosionCount = 0;
maxExplosions = 30;


powerUpsObtained = 0;
treesDestroyed = 0;
shipsDestroyed = 0;
if(obj_music.music == false){
	// don't play any music
}else{
	audio_play_sound(track_01, 11, true);
}

