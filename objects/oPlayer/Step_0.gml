/// @description Insert description here
// You can write your code in this editor

_keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
_keyRight = keyboard_check(vk_right)|| keyboard_check(ord("D"));
_keyUp = keyboard_check(vk_up)|| keyboard_check(ord("W"));
_keyDown = keyboard_check(vk_down)|| keyboard_check(ord("S"));
_keyJump = keyboard_check(vk_space);

_hSpeed = _keyRight - _keyLeft;
_vSpeed = _keyDown - _keyUp;

if(_hSpeed != 0 || _vSpeed != 0)
{
	
	var _angle = point_direction(0,0,_hSpeed, _vSpeed);
	
	
	var _xAdd = lengthdir_x(_walkSpeed,_angle);
	var _yAdd = lengthdir_y(_walkSpeed,_angle);
	
	x = clamp(x + _xAdd, sprite_xoffset, global.displayWidth - sprite_xoffset);
	y = clamp(y + _yAdd, sprite_yoffset, global.displayHeight - sprite_yoffset);
	
	direction = _angle;
	image_speed = 2;
	sprite_index = _spriteDown;
	//image_index = (y % sprite_get_number(sprite_index))-1;
	
}else{
	sprite_index = _spriteIdle;	
}

if(_keyJump){
	y -=2;
}
