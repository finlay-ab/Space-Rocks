/// @description activate power-up

powerup = player_state.ghost_powerup;

//alarm zero happens after 60*10 frames (10 seconds)
alarm[0] = 10*60;

//sets instance colour to white and make it transparrent
image_blend = c_white;
image_alpha = 0.4

//destroys instance that it collided with
instance_destroy(other);
