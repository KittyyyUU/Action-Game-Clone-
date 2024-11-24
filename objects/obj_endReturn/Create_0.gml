/// @description Insert description here
// You can write your code in this editor
var idA=layer_get_id("bkg_winnerA");
var idB=layer_get_id("bkg_winnerB");
var idDraw=layer_get_id("bkg_winnerDraw");
if(global.playerAScore>global.playerBScore){
	layer_set_visible(idA,true);
	layer_set_visible(idB,false);
	layer_set_visible(idDraw,false);
}
else if(global.playerAScore==global.playerBScore){
	layer_set_visible(idDraw,true);
	layer_set_visible(idA,false);
	layer_set_visible(idB,false);
}
else{
	layer_set_visible(idB,true);
	layer_set_visible(idA,false);
	layer_set_visible(idDraw,false);
}