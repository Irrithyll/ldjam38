/// @description Insert description here
// You can write your code in this editor
hit = false;
powerup = "threeshot";
timer = 0;
timerLimit = 120;

sprite_index = spr_powerup_3shot;

r = irandom_range(0, 100);

if(r < 25){
	powerup = "threeshot";
	sprite_index = spr_powerup_3shot;
}else if( r >= 25 && r <= 50){
	powerup = "heart";
	sprite_index = spr_powerup_heart;
}else if( r > 50 && r <= 100) {
	powerup = "shield";
	sprite_index = spr_powerup_shield;
}
