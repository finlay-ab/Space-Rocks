/// @description Camera set up
// You can write your code in this editor

//camera 
global.cameraX = 0;
global.cameraY = 0;

target = obj_player;

global.cameraWidth = 500;
global.cameraHeight = 500;

view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0], global.cameraWidth, global.cameraHeight);

if(room == rm_game)
{
	spawn_off_camera(obj_rock, 40);
}

//display
displayScale = 2;

displayWidth = global.cameraWidth * displayScale;
displayHeight = global.cameraHeight * displayScale;

window_set_size(displayWidth, displayHeight);
surface_resize(application_surface, displayWidth, displayHeight);

//GUI
display_set_gui_size(global.cameraWidth, global.cameraHeight);


//calls alarm 0 after 1 frame
//this is because some window management cant be done until then
alarm[0] = 1;