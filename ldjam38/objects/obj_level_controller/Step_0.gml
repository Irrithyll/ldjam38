/// @description Insert description here
// You can write your code in this editor

// check if player is dead
if(gameOver == true) return;
if(obj_planet.durability <= 0 || instance_number(obj_tree) <= 0 && gameOver == false){

	
	// destroy everything
	with (obj_asteroid){
		self.value = 0;
		instance_destroy();
	}
	with (obj_powerup){
		instance_destroy();
	}
	with (obj_turret){
		instance_destroy();
	}
	with (obj_fire){
		instance_destroy();
	}
	with (obj_smoke){
		instance_destroy();
	}
	with (obj_tree){
		instance_destroy();
	}
	
	if(instance_exists(obj_shield)){
		instance_destroy(obj_shield);
	}
	
	// planet is dead!
	gameOver = true;
	
	// destroy bg of the planet
	instance_destroy(obj_green_bg);
   
}else{

	xPos = 0;
	yPos = 0;
	
	spawnTimer++;

	if(spawnTimer >= spawnTimerLimit){
		show_debug_message("Spawn");
		spawnTimer = 0;
		spawnTimerLimit = irandom_range(bottomTimeLimit, topTimeLimit);
		pos = random_range(0, 100);
	
		if(pos < 25){
			xPos = random_range(0, 800);
			yPos = 0;
		}else if(pos >25 && pos < 50){
			xPos = random_range(0, 800);
			yPos = 800;
		}else if(pos > 50 && pos < 75){
				yPos = 250;
				xPos = 0;
		}else{
				xPos = 250;
				yPos = 0;
		}

		instance_create_layer(xPos, yPos, "Asteroids", obj_asteroid);
	
		 if((asteroidsDestroyed / 5) >= increase){
			// reduce timer

			if(topTimeLimit > 30){
				show_debug_message("reduce timer");
				topTimeLimit -= 10;
				maxMoveSpeed += 0.1;
			}else{
				minMoveSpeed += 0.1;
			}
		}
	}

}
