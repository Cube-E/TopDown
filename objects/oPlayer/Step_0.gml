/// @description Insert description here
// You can write your code in this editor

_keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
_keyRight = keyboard_check(vk_right)|| keyboard_check(ord("D"));
_keyUp = keyboard_check(vk_up)|| keyboard_check(ord("W"));
_keyDown = keyboard_check(vk_down)|| keyboard_check(ord("S"));

_hSpeed = _keyRight - _keyLeft;
_vSpeed = _keyDown - _keyUp;

if(_hSpeed != 0 || _vSpeed != 0)
{
	
	var _angle = point_direction(0,0,_hSpeed, _vSpeed);
	var _xAdd = lengthdir_x(_walkSpeed,_angle);
	var _yAdd = lengthdir_y(_walkSpeed,_angle);
	x += _xAdd;
	y += _yAdd;
	
}