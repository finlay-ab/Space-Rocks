/// @description draws points and fps
// You can write your code in this editor
 
switch(room){
	case rm_game:
		draw_text(10,10,"Score: " + string(points));
		draw_text(10,65,"Lives: " + string(lives));
		break;
	
	case rm_menu:
		draw_set_halign(fa_center);
		var c = c_yellow;
		draw_text_transformed_color(
		room_width/2, 75, "Space Rocks", 3, 3, 0, c,c,c,c, 1
		);
		draw_text(room_width/2, 250, "Score 1000 points to win!");
		draw_set_halign(fa_left);
		break;
	
	case rm_win:
		draw_set_halign(fa_center);
		var c = c_lime;
		draw_text_transformed_color(
		room_width/2, 75, "YOU WIN!", 3, 3, 0, c,c,c,c, 1
		);
		draw_set_halign(fa_left);
		break;
	
	case rm_gameover:
		draw_set_halign(fa_center);
		var c = c_red;
		draw_text_transformed_color(
		room_width/2, 75, "YOU LOST!", 3, 3, 0, c,c,c,c, 1
		);
		draw_text(room_width/2, 250, "Score: " + string(score));
		draw_set_halign(fa_left);
	break;

}
