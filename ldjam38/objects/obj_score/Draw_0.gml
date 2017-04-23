/// @description Insert description here
// You can write your code in this editor

if(value == 0){
	instance_destroy(self);
}
timer++;

if(timer < renderTimer){
	draw_text(x,y,value);
}else{
	instance_destroy(self);
}