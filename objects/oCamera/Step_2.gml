/// @description Insert description here
// You can write your code in this editor

#macro view view_camera[0]

camera_set_view_size(view, _cameraWidth,_cameraHeight);


if(instance_exists(oPlayer)){
	var _xx = clamp(oPlayer.x - _cameraWidth/2, 0, global.displayWidth - _cameraWidth);
	var _yy = clamp(oPlayer.y - _cameraHeight/2, 0, global.displayHeight - _cameraHeight);
	camera_set_view_pos(view, _xx, _yy);
}