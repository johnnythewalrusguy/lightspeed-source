if(titleMenuFirst and not musicPlaying){
	audio_play_sound(TitleIntro,5,true)
	musicPlaying = true
}
if(stopAll){
	musicPlaying=false
	titleMenuFirst=false
	titleMenuLoop=false
	lightSpeedTheme=false
	admonishment=false
	audio_stop_all()
}