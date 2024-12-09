/// @description Insert description here
// You can write your code in this editor
draw_set_valign(fa_middle);
draw_set_font(font_pixel);

if(obj_cameraPos.y>=384&&obj_cameraPos.y<=982){
	draw_set_halign(fa_left);
	draw_text_transformed_colour(obj_cameraPos.x-650,obj_cameraPos.y-350,string(global.playerAScore),5,5,0,c_red,c_red,c_red,c_red,1);
	draw_set_halign(fa_right);
	draw_text_transformed_colour(obj_cameraPos.x+650,obj_cameraPos.y-350,string(global.playerBScore),5,5,0,c_blue,c_blue,c_blue,c_blue,1);
	draw_set_halign(fa_middle);
	draw_text_transformed_colour(obj_cameraPos.x,obj_cameraPos.y-350,string(ceil(timer/room_speed)),5,5,0,c_black,c_black,c_black,c_black,1);
}
else if(obj_cameraPos.y>982){
	draw_set_halign(fa_left);
	draw_text_transformed_colour(obj_cameraPos.x-650,632,string(global.playerAScore),5,5,0,c_red,c_red,c_red,c_red,1);
	draw_set_halign(fa_right);
	draw_text_transformed_colour(obj_cameraPos.x+650,632,string(global.playerBScore),5,5,0,c_blue,c_blue,c_blue,c_blue,1);
	draw_set_halign(fa_middle);
	draw_text_transformed_colour(obj_cameraPos.x,632,string(ceil(timer/room_speed)),5,5,0,c_black,c_black,c_black,c_black,1);
}
else{
	draw_set_halign(fa_left);
	draw_text_transformed_colour(obj_cameraPos.x-650,34,string(global.playerAScore),5,5,0,c_red,c_red,c_red,c_red,1);
	draw_set_halign(fa_right);
	draw_text_transformed_colour(obj_cameraPos.x+650,34,string(global.playerBScore),5,5,0,c_blue,c_blue,c_blue,c_blue,1);
	draw_set_halign(fa_middle);
	draw_text_transformed_colour(obj_cameraPos.x,34,string(ceil(timer/room_speed)),5,5,0,c_black,c_black,c_black,c_black,1);
}