if (leg.HaveEnteredFive) {
	if(leg.lebronify==false){
		leg.lebronify = true;
	
	    show_debug_message("lebroggled");
		LeBroption.sprite_index=Sprite40
	} 
	else if(leg.lebronify==true){
		leg.lebronify = false;
		LeBroption.sprite_index=lebronX
	}
}