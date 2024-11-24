/// @description Insert description here
// You can write your code in this editor
grow0=false;
grow1=false;
grow2=false;
alarm[0]=room_speed*3;
randomize();
var created=false;
while(!created){
	var temp_x=random(room_width);
	var temp_y=random_range(598,1300);
	if(position_empty(temp_x+32,temp_y)&&position_empty(temp_x-32,temp_y)&&position_empty(temp_x,temp_y+32)&&position_empty(temp_x,temp_y-32)){
		x=temp_x;
		y=temp_y;
		created=true;
	}
}