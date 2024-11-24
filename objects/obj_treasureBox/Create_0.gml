/// @description Insert description here
// You can write your code in this editor
randomize();
acc=global.playerGrav;
var created=false;
while(!created){
	var random_cloud=ds_list_find_value(obj_manager.cloudList,floor(random(ds_list_size(obj_manager.cloudList))));
	var temp_x=random_cloud.x;
	var temp_y=random_cloud.y-128;
	if(position_empty(temp_x+16,temp_y)&&position_empty(temp_x-16,temp_y)&&position_empty(temp_x,temp_y+16)&&position_empty(temp_x,temp_y-16)){
		x=temp_x;
		y=temp_y;
		created=true;
	}
}