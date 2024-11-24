/// @description Insert description here
// You can write your code in this editor
vspeed+=acc;
if(place_meeting(x,y,obj_cloud)){
	vspeed=0;
}
if(y>room_height){
	instance_destroy(id);
}