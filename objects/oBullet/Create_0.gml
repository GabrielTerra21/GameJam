//velocidade e fazer com que a direcao da obullet seja igual a da oGun
speed=25;
with(oPlayer) var b0 = bullet_direction == 0;
if(b0) {
	direction = 180;
}

with(oPlayer) var b1 = bullet_direction == 1
if(b1) {
	direction = 0;
}