///@description  
// You can write your code in this editor


friction = 0.4;
//accelerate
if keyboard_check(vk_up)
{

		speed = speed * (1 - (delta_time/1000000) * friction) + max_speed * ((delta_time/1000000) * friction)

}

//decellerate
if keyboard_check(vk_down)
{
      speed = speed * (1 - (delta_time/1000000) * friction) - max_speed * ((delta_time/1000000) * friction)
}

motion_set(image_angle, speed);



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
	}
}
	

move_wrap(true, true, 0)