/// @description Insert description here

if (powerup == player_state.ghost_powerup) exit;

lives -= 1;

effect_create_above(ef_firework, x, y, 1, c_white);
instance_destroy();
obj_game.alarm[0] = 120;
audio_play_sound(snd_lose, 0, false);