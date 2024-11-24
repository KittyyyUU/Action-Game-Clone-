/// @description Insert description here
// You can write your code in this editor
randomize();
instance_create_layer(random(room_width),room_height,"Instances",obj_playerB);
audio_play_sound(snd_create,0,false);