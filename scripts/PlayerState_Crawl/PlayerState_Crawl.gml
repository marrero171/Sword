if (!onground)
{
state = PLAYERSTATE.FREE;	
}
else
if (keyCrouch) and (hsp !=0)
{
{ 

	//calc horizontal movement
	walljumpdelay = max(walljumpdelay-1,0);
	if (walljumpdelay == 0)
	{
	
	var dir = key_right - key_left;
	hsp += dir * hsp_acc;
	if (dir == 0)
	{
	
	var hsp_fricc_final = hsp_fricc_ground;
	if (!onground) hsp_fricc_final = hsp_fricc_air;
	hsp = Approach (hsp,0,hsp_fricc_final);

	}
	
	hsp = clamp(hsp,-hsp_walk,hsp_walk);

	}
	//animations
	sprite_index = sPlayerCW;
	
	//image_xscale = sign(hsp);
}
}


if (hsp !=0) and (!keyCrouch)
{
	hsp_walk = 4;
	sprite_index= sPlayer;
	state = PLAYERSTATE.FREE;
	
}
else if (hsp = 0) and (keyCrouch)
{
	state= PLAYERSTATE.CROUCH;
	sprite_index = sPlayerC;
	image_index = 2;
}






