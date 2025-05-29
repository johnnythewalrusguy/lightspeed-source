/// @description Insert description here
// You can write your code in this editor
str_milisecos=string(floor(milisecos));
str_minu=string(minu);
str_second=string(second);
if(milisecos<10) {str_milisecos="0" +str_milisecos;}
if(second<10)  {str_second="0" +str_second;}
if(minu<10) {str_minu="0" +str_minu;}
draw_set_color(c_white);
draw_set_font(Font1);
draw_text(timerx, timery, str_minu+":"+str_second+":"+str_milisecos);
milisecos += 100/room_speed;
if(milisecos>=100) {second+=1; milisecos-=100;}
if(second>=60) {minu+=1; second-=60;}