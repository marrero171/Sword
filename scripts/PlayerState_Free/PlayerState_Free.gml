if (mask_index !=sPlayer) mask_index = sPlayer
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
//walljump
if (onwall != 0) and (!onground) and (key_jump)
{
	walljumpdelay = walljumpdelay_max;
	hsp = -onwall * hsp_wjump;
	vsp = vsp_wjump;
	
	hsp_frac = 0;
	vsp_frac = 0;
}


//calculate vertical movement
var grv_final = grv;
var vsp_max_final = vsp_max;
if (onwall !=0) and (vsp > 0)
{
	grv_final = grv_wall;
	vsp_max_final = vsp_max_wall;
}

vsp += grv_final;
vsp = clamp(vsp,-vsp_max_final,vsp_max_final);
//Ground Jump
if (jumpbuffer > 0)
{
	jumpbuffer--;
	if(key_jump)
	{
		jumpbuffer = 0;
		vsp = vsp_jump;
		vsp_frac = 0;
	}
}


//Dump fractions and get final integer speeds
hsp += hsp_frac;
vsp += vsp_frac;
hsp_frac = frac(hsp);
vsp_frac = frac(vsp);
hsp -= hsp_frac;
vsp -= vsp_frac;



//animation
image_speed = 1;
if (hsp !=0) image_xscale = sign(hsp);
if (!onground)
{
	if (onwall != 0)
	{
		sprite_index = sPlayerW;
		image_xscale = onwall;
		
		var side = bbox_left;
		if (onwall == 1) side = bbox_right;
		dust ++;
		if ((dust > 2) and (vsp > 0)) with (instance_create_layer(side,bbox_top,"Behind",oDust))
		{
			other.dust = 0;
			hspeed = -other.onwall*0.5;
		}
	}
	else
	{
	dust = 0;
	sprite_index = sPlayerA;
	image_speed = 0;
	image_index = (vsp > 0);
	}
}

else
{
	if (hsp != 0) sprite_index = sPlayerR; else sprite_index = sPlayer;
	
}

if (keyAttack) state = PLAYERSTATE.ATTACK_SLASH
if (keyCrouch) state = PLAYERSTATE.CROUCH;
if (keyCrouch) and (hsp !=0) 
{
	hsp_walk = 1.5;
state = PLAYERSTATE.CRAWL;
}
{
		
}
