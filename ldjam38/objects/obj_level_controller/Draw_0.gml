/// @description Insert description here
// You can write your code in this editor

draw_text(x+10, y, "SCORE");
draw_text(x+10+50, y, score);


if(gameOver != true){
	draw_text(x - 265, y, "GREENERY");
	draw_sprite(spr_health_1, 0, x + 1 - 200, y+3);
	for(var i = 0; i < obj_planet.maxDurability; i++){
		if( i == obj_planet.maxDurability-1){
			draw_sprite(spr_health_2, 0, x + (((i*5)+2) - 200), y+3);
		}else{
			draw_sprite(spr_health_3, 0, x + (((i*5)) - 200), y+3);
		}
		
		if(obj_planet.durability >= i){
			draw_sprite(spr_health, 0, x + (((i*5)+1) - 200), y+3);
		}
	}
	//draw_sprite(spr_health_2, 0, x + (((obj_planet.maxDurability*5)+3) - 250), y+3);
}
