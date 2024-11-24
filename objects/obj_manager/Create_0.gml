/// @description Insert description here
// You can write your code in this editor
randomize();
cloudList=ds_list_create();
cloudMax=20;
cloudNum=ds_list_size(cloudList);
tBoxList=ds_list_create();
alarm0Activated=true;
alarm1Activated=true;
alarm2Activated=true;
global.playerGrav=0.5;
alarm[0]=room_speed*1;
alarm[1]=room_speed*3;
alarm[2]=room_speed*3;
alarm[3]=room_speed*5;
timer=room_speed*90;
global.playerAScore=0;
global.playerBScore=0;
audio_play_sound(snd_bgm,0,true);
inst_4C311786.visible=false;
inst_DC85262.visible=false;
inst_4FDBB469.visible=false;
inst_52B4D133.visible=false;