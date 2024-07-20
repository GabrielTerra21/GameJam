var _keyRight = keyboard_check(vk_right);
var _keyLeft = keyboard_check(vk_left);
var _keyJump = keyboard_check_pressed(vk_space);

hsp = (_keyRight - _keyLeft) * hspWalk;

vsp = vsp + grv;

if (canJump-- > 0) && (_keyJump)
{
	vsp = vspJump;
	canJump = 0;
}

//Collide and shMove
if (place_meeting(x + hsp, y, sWall))
{
	while (abs(hsp) > 0.1)
	{
		hsp *= 0.5;
		if (!place_meeting(x + hsp, y, sWall)) x += hsp;
	}
	hsp = 0;
}
x += hsp;

if (place_meeting(x, y + vsp, sWall))
{
	if (vsp > 0) canJump = 5;
	while (abs(vsp) > 0.1)
	{
		vsp *= 0.5;
		if (!place_meeting(x, y + vsp, sWall)) y += vsp;
	}
	vsp = 0;
}
y += vsp;