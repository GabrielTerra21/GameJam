//mouse mudar a direcao
var _dir = point_direction(x, y, mouse_x, mouse_y);
var _diff = angle_difference(_dir, image_angle);
image_angle += _diff * 0.1;

firedeplayed=firedeplayed-1;

//criar o oBullet quando clicar
if(mouse_check_button_released(mb_left)&&(firedeplayed<1))
{
	instance_create_layer(x,y,"bullet",oBullet);
	firedeplayed=6;
}