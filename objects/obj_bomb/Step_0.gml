/// @description Insert description here
// You can write your code in this editor
vspeed+=acc;
if(place_meeting(x,y,obj_cloud)){
	vspeed=0;
}
if(y>room_height){
	instance_destroy(id);
}
if(timer>0){
	timer--;
}
if(id.sprite_index!=spr_explosion){
	var temp_y=y-112;
}
if(timer==0){
	y=temp_y;
	id.sprite_index=spr_explosion;
	obj_cameraPos.shake_intensity = 20;
    obj_cameraPos.shake_duration = 20;
	if(instance_exists(obj_playerA)){
		if(place_meeting(x,y,obj_playerA)&&!obj_playerA.isBubbled){
			global.playerAScore--;
			instance_destroy(obj_playerA);
			inst_DC85262.visible=false;
			inst_4C311786.visible=false;
			obj_manager.alarm1Activated=false;
		}
	}
	if(instance_exists(obj_playerB)){
		if(place_meeting(x,y,obj_playerB)&&!obj_playerB.isBubbled){
			global.playerBScore--;
			instance_destroy(obj_playerB);
			inst_52B4D133.visible=false;
			inst_4FDBB469.visible=false;
			obj_manager.alarm2Activated=false;
		}
	}
	timer=-1;
}
if(id.sprite_index==spr_explosion&&!selfDestroy){
	alarm[0]=room_speed*1;
	selfDestroy=true;
	audio_play_sound(snd_explosion,0,false);
}

