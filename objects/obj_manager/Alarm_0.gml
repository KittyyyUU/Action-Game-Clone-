/// @description Insert description here
// You can write your code in this editor
var temp_inst=instance_create_layer(0,0,"Instances",obj_cloud);
ds_list_add(cloudList,temp_inst);
if(cloudNum<cloudMax){
	alarm[0]=room_speed*1;
	alarm0Activated=true;
}
else{
	alarm0Activated=false;
}