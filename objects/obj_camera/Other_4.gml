/// @description Camera set up
// You can write your code in this editor

//camera 
cameraX = 0;
cameraY = 0;

target = obj_player;

cameraWidth = 500;
cameraHeight = 500;

view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0], cameraWidth, cameraHeight);


//display
displayScale = 2;

displayWidth = cameraWidth * displayScale;
displayHeight = cameraHeight * displayScale;

window_set_size(displayWidth, displayHeight);
surface_resize(application_surface, displayWidth, displayHeight);

//GUI
display_set_gui_size(cameraWidth, cameraHeight);


//calls alarm 0 after 1 frame
//this is because some window management cant be done until then
alarm[0] = 1;