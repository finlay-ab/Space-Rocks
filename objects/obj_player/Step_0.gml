///@description  
// You can write your code in this editor

//movement
//accelerate
if keyboard_check(vk_up)
{
		motion_add(image_angle, 0.05);
}

//decellerate
if keyboard_check(vk_down)
{
	motion_add(image_angle, -0.05);     
}






if keyboard_check(vk_left)
{
         image_angle += 4;
}
if keyboard_check(vk_right)
{
        image_angle -= 4;
}


shot_timer += delta_time; 
if keyboard_check(vk_space)
{
	if (shot_timer >= min_time_between_shots) 
	{
		shot_timer = 0; 
		instance_create_layer(x, y, "Instances", obj_bullet);
		
		if (powerup == player_state.spread_powerup)
		{
			//creates a bullet and stores its reference in _bullet
			var _bullet = instance_create_layer(x, y, "Instances", obj_bullet);
			_bullet.direction += 10;
			
			//creates another bullet and stores new refrence in _bullet
			_bullet = instance_create_layer(x, y, "Instances", obj_bullet);
			_bullet.direction -= 10;
		}
		
		audio_play_sound(snd_shoot, 0 , false, 1, 0, random_range(0.8,1.2));
	}
}
	

move_wrap(true, true, 0)