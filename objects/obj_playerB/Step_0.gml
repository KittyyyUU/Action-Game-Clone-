/// @description Insert description here
// You can write your code in this editor
if(!isWinged){
	vspeed+=acc;
	if(vspeed>=0){
		falling=true;
	}
}
if(control){
	var temp_inst=instance_place(x,y+acc,obj_cloud);
	if(falling&&temp_inst!=noone&&temp_inst.y>y+acc){
		vspeed=clamp(vspeed*-0.98,ySpdMax,ySpdMin);
		audio_play_sound(snd_jump,0,false);
		falling=false;
		var temp_inst_x=temp_inst.x;
		var temp_inst_y=temp_inst.y;
		var temp_inst_pos=ds_list_find_index(obj_manager.cloudList,temp_inst);
		ds_list_delete(obj_manager.cloudList,temp_inst_pos);
		var temp_inst_new=instance_create_layer(temp_inst_x,temp_inst_y,"Instances",obj_cloud_disappeared);
		if(temp_inst.sprite_index==spr_cloud_2){
			temp_inst_new.sprite_index=spr_cloud_dis_2;
		}
		else if(temp_inst.sprite_index==spr_cloud_3){
			temp_inst_new.sprite_index=spr_cloud_dis_3;
		}
		else if(temp_inst.sprite_index==spr_cloud_4){
			temp_inst_new.sprite_index=spr_cloud_dis_4;
		}
		instance_destroy(temp_inst);
	}
	moveLeft=keyboard_check(vk_left);
	moveRight=keyboard_check(vk_right);
	if(hspeed==0&&!isWinged){
		x+=xSpd;
		if(moveLeft){
			xSpd-=xSpdAcc;
			hspeed=0;
		}
		if(moveRight){
			xSpd+=xSpdAcc;
			hspeed=0;
		}
		if(!moveLeft&&!moveRight){
			if(xSpd>0){
				xSpd-=xSpdAcc;
				hspeed=0;
			}
			else if(xSpd<0){
				xSpd+=xSpdAcc;
				hspeed=0;
			}
		}
	}
}
if(x-32<=0){
	hspeed=20;
	x=32;
}
if(x+32>=room_width){
	hspeed=-20;
	x=room_width-32;
}
if(hspeed!=0){
	xSpd=0;
	if(!boundarySndPlayed){
		audio_play_sound(snd_boundary,0,false);
		boundarySndPlayed=true;
	}
	if(hspeed>0){
		hspeed-=1;
	}
	else if(hspeed<0){
		hspeed+=1;
	}
}
else{
	boundarySndPlayed=false;
}
if(instance_exists(obj_playerA)){
	if(place_meeting(x,y+acc,obj_playerA)&&y+acc<=obj_playerA.y&&!obj_playerA.isBubbled){
		if(falling||isWinged){
			obj_playerA.isWinged=false;
			var temp_player_x=obj_playerA.x;
			var temp_player_y=obj_playerA.y;
			instance_create_layer(temp_player_x,temp_player_y,"Instances",obj_star);
			audio_play_sound(snd_hit,0,false);
			vspeed=clamp(vspeed*-0.98,ySpdMax,ySpdMin);
			falling=false;
			obj_playerA.vspeed=30;
			obj_playerA.control=false;
			global.playerBScore+=1;
		}
	}
}
if(falling&&vspeed>=5){
	id.sprite_index=spr_playerB_down;
}
else if(falling&&vspeed<5){
	id.sprite_index=spr_playerB_still;
}
else{
	id.sprite_index=spr_playerB_up;
}
if(isBubbled){
	if(!isBubbledAlarm){
		alarm[0]=room_speed*10;
		isBubbledAlarm=true;
	}
	inst_4FDBB469.visible=true;
}
if(isWinged){
	if(!isWingedAlarm){
		alarm[1]=room_speed*10;
		isWingedAlarm=true;
	}
	inst_52B4D133.visible=true;
	vspeed=0;
	moveUp=keyboard_check(vk_up);
	moveDown=keyboard_check(vk_down);
	if(moveUp){
		y-=10;
	}
	if(moveDown){
		y+=10;
	}
	if(moveLeft){
		x-=10;
	}
	if(moveRight){
		x+=10;
	}
}