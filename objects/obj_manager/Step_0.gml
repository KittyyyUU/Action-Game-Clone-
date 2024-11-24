/// @description Insert description here
// You can write your code in this editor
randomize();
cloudNum=ds_list_size(cloudList);
if(!alarm0Activated&&cloudNum<cloudMax){
	alarm[0]=room_speed*1;
	alarm0Activated=true;
}
if(instance_exists(obj_playerA)==false&&!alarm1Activated){
	alarm[1]=room_speed*3;
	alarm1Activated=true;
}
else if(instance_exists(obj_playerA)){
	if(obj_playerA.y>room_height){
		var temp_playerA_x=obj_playerA.x;
		var temp_playerA_y=obj_playerA.y;
		inst_4C311786.visible=false;
		inst_DC85262.visible=false;
		instance_destroy(obj_playerA);
		global.playerAScore-=1;
		alarm1Activated=false;
		instance_create_layer(temp_playerA_x,temp_playerA_y,"Instances",obj_star);
		audio_play_sound(snd_fall,0,false);
	}
}
if(instance_exists(obj_playerB)==false&&!alarm2Activated){
	alarm[2]=room_speed*3;
	alarm2Activated=true;
}
else if(instance_exists(obj_playerB)){
	if(obj_playerB.y>room_height){
		var temp_playerB_x=obj_playerB.x;
		var temp_playerB_y=obj_playerB.y;
		inst_4FDBB469.visible=false;
		inst_52B4D133.visible=false;
		instance_destroy(obj_playerB);
		global.playerBScore-=1;
		alarm2Activated=false;
		instance_create_layer(temp_playerB_x,temp_playerB_y,"Instances",obj_star);
		audio_play_sound(snd_fall,0,false);
	}
}
if(timer>0){
	timer--;
}
if(timer==0){
	timer=-1;
	room_goto(rm_end);
}