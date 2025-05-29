
if (leg.muteImage == true ){
   sprite_index = Sprite36;
   	leg.stopAll = false
	leg.titleMenuFirst= true
	leg.muteImage = false
}
else {
   sprite_index = sound_off;
   leg.stopAll = true
   leg.muteImage = true
}

if(room == not menu){
	audio_stop_sound(TitleIntro)
	audio_stop_sound(TitleLoop)
	audio_stop_sound(titleFINAL)
}