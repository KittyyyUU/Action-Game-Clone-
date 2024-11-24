/// @description Insert description here
// You can write your code in this editor
randomize();
var temp_inst=instance_place(x,y,obj_treasureBox);
var temp_inst_pos=ds_list_find_index(obj_manager.tBoxList,temp_inst);
ds_list_delete(obj_manager.tBoxList,temp_inst_pos);
var temp_num=floor(random(3));
if(temp_num==0){
	isBubbled=true;
}
else if(temp_num==1){
	isWinged=true;
}
else if(temp_num==2){
	instance_create_layer(temp_inst.x,temp_inst.y,"Instances",obj_bomb);
}
instance_destroy(temp_inst);