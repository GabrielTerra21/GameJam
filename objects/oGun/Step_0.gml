//mouse mudar a direcao
if keyboard_check(ord("D")) {
	oGun.visible = true;
}

if keyboard_check(ord("A")) {
	oGun.visible = false;
}

firedeplayed=firedeplayed-1;

//criar o oBullet quando clicar
if(mouse_check_button_released(mb_left)&&(firedeplayed<1))
{
	instance_create_layer(x,y,"bullet",oBullet);
	firedeplayed=6;
}