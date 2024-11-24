/// @description Insert description here
// You can write your code in this editor
randomize();
falling=false;
acc=global.playerGrav;
xSpd=0;
xSpdAcc=1;
ySpdMax=-25;
ySpdMin=-15;
control=true;
vspeed=-30;
hspeed=round(random_range(-50,50));
boundarySndPlayed=true;
isWinged=false;
isWingedAlarm=false;
isBubbled=false;
isBubbledAlarm=false;