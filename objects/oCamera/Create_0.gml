/// @description Insert description here
// You can write your code in this editor

_cameraWidth=1920/3;
_cameraHeight=1080/3;

_windowScale=3;

global.displayWidth = _cameraWidth * _windowScale;
global.displayHeight = _cameraHeight * _windowScale;

room_set_width(rGame,global.displayWidth);
room_set_height(rGame,global.displayHeight);

print("width: ", room_width);
print("height: ", room_height);
window_set_size(global.displayWidth, global.displayHeight);
alarm[0] = 1;

surface_resize(application_surface,global.displayWidth, global.displayHeight);
