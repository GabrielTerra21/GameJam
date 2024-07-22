
//HIT = -1 DE VIDA E INVUL POS HIT
if !recently_hit {
    health -= 1;
	recently_hit = true;
	alarm[0] =  room_speed * 1;
}