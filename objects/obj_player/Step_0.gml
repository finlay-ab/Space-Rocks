///@description movement 
// You can write your code in this editor

shot_timer += delta_time / 1000000; // Convert to seconds

if keyboard_check(vk_up)
{
        motion_add(image_angle, 0.1);
}

if keyboard_check(vk_left)
{
        image_angle += 4;
}
if keyboard_check(vk_right)
{
        image_angle -= 4;
}

if keyboard_check(vk_space)
{
	if (shot_timer >= 1) 
	{
		shot_timer = 0;
		instance_create_layer(x, y, "Instances", obj_bullet);
	}
}
	

move_wrap(true, true, 0)