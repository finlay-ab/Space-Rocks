/// @description activate power-up

powerup = player_state.ghost_powerup;

//alarm zero happens after 60*10 frames (10 seconds)
alarm[0] = 10*60;

//sets instance colour to yellow to show power-up is active
image_blend = c_yellow; 

//destroys instance that it collided with
instance_destroy(other);
