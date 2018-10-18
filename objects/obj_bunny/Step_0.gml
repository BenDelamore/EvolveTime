scr_player(); // Player control script

scr_move(hsp); // General physics script

// Change sprite depending on player control
if (controls_enabled)
{
	sprite_index = spr_player_cat_blob;	
}
else
{
	sprite_index = spr_bunny;
}

if (room == 5)
{
	if (global.level_complete == true)
	{
		x = 1632;
	}
	
}
