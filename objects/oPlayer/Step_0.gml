var _keyRight = keyboard_check(ord("D"));
var _keyLeft = keyboard_check(ord("A"));
var _keyJump = keyboard_check_pressed(vk_space);

hsp = (_keyRight - _keyLeft) * hspWalk;

vsp = vsp + grv;

if (canJump-- > 0) && (_keyJump)
{
	vsp = vspJump;
	canJump = 0;
}

//Run
if (keyboard_check_pressed(vk_lshift)) {
	hspWalk = hspWalk * 3
}

if (keyboard_check_released(vk_lshift)) {
	hspWalk = 2
}

//Collide and shMove
if (place_meeting(x + hsp, y, oWall))
{
	while (abs(hsp) > 0.1)
	{
		hsp *= 0.5;
		if (!place_meeting(x + hsp, y, oWall)) x += hsp;
	}
	hsp = 0;
}
x += hsp;

if (place_meeting(x, y + vsp, oWall))
{
	if (vsp > 0) canJump = 5;
	while (abs(vsp) > 0.1)
	{
		vsp *= 0.5;
		if (!place_meeting(x, y + vsp, oWall)) y += vsp;
	}
	vsp = 0;
}
y += vsp;


if _keyLeft {
	sprite_index = sPlayer_L;
	bullet_direction = 0
}

if _keyRight {
	sprite_index = sPlayer_R;
	bullet_direction = 1;
}

firedeplayed=firedeplayed-1;
//criar o oBullet quando clicar
if(keyboard_check(ord("J"))&&(firedeplayed<1))
{
	instance_create_layer(x,y,"bullet",oBullet);
	firedeplayed=6;
}