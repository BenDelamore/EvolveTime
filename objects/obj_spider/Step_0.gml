scr_player();
//scr_ignite();

scr_move(hsp); // General physics script

// Change sprite depending on player control
/*
if (controls_enabled)
{
	sprite_index = spr_spider;	
}
else
{
	sprite_index = spr_spider;
}
*/

image_speed = 1;

if (hsp == 0)
{
	image_index = 0;
}