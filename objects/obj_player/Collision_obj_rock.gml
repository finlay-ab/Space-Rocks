/// @description Insert description here

if (powerup == player_state.ghost_powerup) exit;

lives -= 1;

effect_create_above(ef_firework, x, y, 1, c_white);
audio_play_sound(snd_lose, 0, false);

if(lives <= 0)
{
	//Game over
	instance_destroy();
	obj_game.alarm[0] = 120;
}
else
{
	//ship is damaged 
	//make player invinsible so they can escape harm before continuing
	powerup = player_state.ghost_powerup;

	//alarm zero happens after 60*10 frames (10 seconds)
	alarm[0] = 5*60;

	//sets instance colour to red to show invinsable
	image_blend = c_red; 
	image_alpha = 0.4

	//destroys instance that it collided with
	instance_destroy(other);
}


