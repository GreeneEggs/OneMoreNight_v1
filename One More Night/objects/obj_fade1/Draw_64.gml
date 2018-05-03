/// @description Insert description here
// You can write your code in this editor


draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
//draw_set_font(fPixel);
draw_text(512,384,print);

if(holdspace>0){
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	//draw_set_font(fPixel);
	draw_text(512,600,"Hold Space to Skip.....");
}
	
	






draw_sprite_ext(sprite49,0,0,0,1024,768,0,c_black,a);
