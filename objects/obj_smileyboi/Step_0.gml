// Get player input
scr_controls();


// Calculate Movement
var move = key_right - key_left;
hsp = move * walksp;
vsp = vsp + grv;

// Grounded check
if (place_meeting(x, y + 1, obj_wall)) 
{
    grounded = true;
} 
else 
{
    grounded = false;
}

// ---- JUMPING ----
//var airtime = 0; // num of steps in air for

// Generous jump buffer
if (!grounded)
{
	airtime += 1;
}
else
{
	airtime = 0;
}

if ((airtime <= jump_buffer) && key_up)
{
	if (key_up)
	{
		vsp = -7;
	}
}

#region //  ---- COLLISIONS ----

// Horizontal Collision
if (place_meeting(x + hsp, y, obj_wall))
{
	while(!place_meeting(x + sign(hsp), y,obj_wall))
	{
		x = x + sign(hsp);
	}
	
	hsp = 0;
}
x = x + hsp;

// Vertical Collision
if (place_meeting(x,y + vsp, obj_wall))
{
	while(!place_meeting(x, y + sign(vsp), obj_wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;

#endregion

//Draw Event
if (!grounded) 
{
    sprite_index = spr_slimeyboijump;
    if (image_index >= image_number-1) {
        image_index = image_number-1;
    }
}
else 
{
    sprite_index = spr_slimeyboi;
}