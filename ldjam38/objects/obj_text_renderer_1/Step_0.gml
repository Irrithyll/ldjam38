/// @description Insert description here
// You can write your code in this editor


asteroidsDestroyed = obj_level_controller.asteroidsDestroyed;
powerUpsObtained = obj_level_controller.powerUpsObtained;
shipsDestroyed = obj_level_controller.shipsDestroyed;
totalScore = score + (powerUpsObtained * 100) + (shipsDestroyed * 1000)

show_debug_message(timer);
show_debug_message(timerLimit);

if(timer > timerLimit){
	asteroidsDestroyed = obj_level_controller.asteroidsDestroyed;
	powerUpsObtained = obj_level_controller.powerUpsObtained;
	shipsDestroyed = obj_level_controller.shipsDestroyed;
	totalScore = score + (powerUpsObtained * 100) + (shipsDestroyed * 1000)

	scoreRendered = true;
	return;
}

timer++;

if(timer > 80){
	totalScore = irandom_range(0, 10000);
}else if(timer > 50){
	shipsDestroyed = irandom_range(0, 10000);
	totalScore = irandom_range(0, 10000);
}else if(timer > 20){
	powerUpsObtained = irandom_range(0, 10000);
	shipsDestroyed = irandom_range(0, 10000);
	totalScore = irandom_range(0, 10000);
}else if(timer < timerLimit){
	asteroidsDestroyed = irandom_range(0, 10000);
	powerUpsObtained = irandom_range(0, 10000);
	shipsDestroyed = irandom_range(0, 10000);
	totalScore = irandom_range(0, 10000);
}
