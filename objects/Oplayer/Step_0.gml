key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (!place_meeting(x,y, antigrav))&&!reverseable{
	reverseable=true
}
if (place_meeting(x,y-1,Owall) && key_jump && reversegrav)
{
	vsp = -7;
}
if (place_meeting(x,y-1,more_jumpy) && reversegrav)
{
	vsp = -20;
}
else if (place_meeting(x,y-1,Owall_spinny) && reversegrav)
{
	vsp = -10;
}
//normal grav
if (place_meeting(x,y+1,Owall) && key_jump && !reversegrav)
{
	vsp = -7;
}
if (place_meeting(x,y+1,more_jumpy) && !reversegrav)
{
	vsp = -20;
}
else if (place_meeting(x,y+1,Owall_spinny) && !reversegrav)
{
	vsp = -10;
}
//upside down!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
// if (place_meeting(x,y+1,Owall)&&grv<0) && (key_jump)
//{
//	vsp = 7;
//}
//if (place_meeting(x,y+1,more_jumpy)&&grv<0)
//{
//	vsp = 20;
//}
//else if (place_meeting(x,y+1,Owall_spinny)&&grv<0)
//{
//	vsp = 10;
//}
//Horizontal collison
if (place_meeting(x+hsp,y,Owall))//owall thing
{
while (!place_meeting(x+sign(hsp),y,Owall))
{
		x = x + sign(hsp);
		
}
hsp=0;
walksp=4;
}
//Vetical collision
if (place_meeting(x,y+vsp,Owall)&&!reversegrav)
{
while (!place_meeting(x,y+sign(vsp),Owall))
{
		y = y + sign(vsp);
}
vsp=0;
reverseable=true
}
else if(place_meeting(x,y-vsp,Owall)&& reversegrav)
{
while (!place_meeting(x,y-sign(vsp),Owall))
{
y = y - sign(vsp);
}
reverseable=true;
vsp=0;
}
//anti grav
//if (place_meeting(x,y+vsp,Owall)&&grv<0)
//{
//while (!place_meeting(x,y+sign(vsp),Owall))
//{
//		y = y + sign(vsp);
//}
//vsp=0;
//}
//Horizontal collison
if (place_meeting(x+hsp,y,Owall_spinny))
{
	while (!place_meeting(x+sign(hsp),y,Owall_spinny))
	{
		x = x + sign(hsp);
	}
	hsp=0;
	walksp=4;
	}
	x = x + hsp;
	//Vetical collision
	if (place_meeting(x,y+vsp,Owall_spinny)&& !reversegrav)
	{
		while (!place_meeting(x,y+sign(vsp),Owall_spinny))
		{
		y = y + sign(vsp);
		}
		reverseable=true;
		vsp=0;
	}
	else if(place_meeting(x,y-vsp,Owall_spinny)&& reversegrav)
	{
		while (!place_meeting(x,y-sign(vsp),Owall_spinny))
		{
		y = y - sign(vsp);
		}
		reverseable=true;
		vsp=0;
	}
	if(!reversegrav){
		y = y + vsp;
	}
	else{
		y=y-vsp;
	}
	walksp=walksp+0.045555;
	if (!place_meeting(x,y+1,Owall)||walksp<=8||(hsp=0)) {
		instance_destroy(sparky);
	}
	else{
	if(!is_real(sparky)&&walksp>=8&&(hsp!=0)){
		instance_create_layer(Oplayer.x-60,Oplayer.y-30,"Instances",sparky);
	}

}

if(leg.lebronify==true){
	Oplayer.sprite_index=Sprite40
	Oplayer.image_xscale=.05926
	Oplayer.image_yscale=image_xscale

    show_debug_message("width"+string(Oplayer.sprite_width));
}
if(leg.lebronify==false){
	Oplayer.sprite_index=Sprite1
}
if(room == Room1){
audio_stop_sound(titleFINAL)
audio_stop_sound(TitleIntro)
audio_stop_sound(TitleLoop)
}
//leg haha funny
//for(var legs=0;legs<walksp;legs++){
//instance_create_layer(x,y,Instances,leg);	
//}

