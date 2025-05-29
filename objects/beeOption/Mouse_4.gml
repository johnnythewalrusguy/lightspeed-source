//if (bee_on==false){
//	bee_on=true
//}
//else{ bee_on=false
//}
///////////////////////////////////////////////
if(bee_on==false){
	sprite_index=Bee_off
}
else{
	sprite_index=bee_option
}

if (leg.bee_off_image==true ){
   sprite_index =bee_option ;
	leg.bee_off_image = false
}
else {
   sprite_index =Sprite34;
   leg.bee_off_image = true
}
//walrus