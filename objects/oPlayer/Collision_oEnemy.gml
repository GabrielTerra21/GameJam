
//HIT = -1 DE VIDA E INVUL POS HIT
show_debug_message("Before: " + string(oPlayer.recently_hit));
if !recently_hit {
    health -= 1;
	recently_hit = true;
	alarm[0] =  gamespeed * 5;
	show_debug_message("After: " + string(oPlayer.recently_hit));
}

//restartar room 
if health < 1 {
   room_restart();
}