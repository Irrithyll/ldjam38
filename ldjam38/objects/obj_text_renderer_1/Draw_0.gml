/// @description Insert description here
// You can write your code in this editor

draw_text(x+20, y, "The Earth Was Obliterated");

draw_text(x, y+100, "SCORE");
draw_text(x+150, y+100, score);

draw_text(x, y+120, "ASTEROIDS DESTROYED");
draw_text(x+150, y+120, asteroidsDestroyed);

draw_text(x, y+140, "POWER-UPS OBTAINED");
draw_text(x+150, y+140, powerUpsObtained);

draw_text(x, y+160, "SHIPS DESTROYED");
draw_text(x+150, y+160, shipsDestroyed);


draw_text(x, y+200, "TOTAL SCORE");
draw_text(x+150, y+200, totalScore);


if(scoreRendered == true){
	draw_text(x, y+260, "Click To Protect The Trees Again");

}