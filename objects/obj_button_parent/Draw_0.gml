//makes sure button is showing
draw_self();

//sets font
draw_set_font(fnt_menu);

//text alignment 
//(makes text centered in button)
draw_set_halign(fa_center);
draw_set_valign(fa_middle)

//draws button text/lable
draw_text(x, y, button_text);

//reset draw values to defult
draw_set_halign(fa_left);
draw_set_valign(fa_top);