
if (!onground)
{
state = PLAYERSTATE.FREE;	
}
else
{ 
	hsp_walk = 1.5;
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
//animation
sprite_index = sPlayerC
image_speed = 1;
mask_index = sPlayerC
if (sprite_index !=sPlayerC) and (keyCrouch)
{
	sprite_index=sPlayerC
	image_index = 2;
}
if (animation_end())
{
	image_speed = 0;
}

if (!keyCrouch)
{
	state = PLAYERSTATE.FREE
	
}
if (keyCrouch) and (hsp !=0)
{
	sprite_index = sPlayerCW
	image_speed = 1
	state = PLAYERSTATE.CRAWL	
}
if (state = PLAYERSTATE.CROUCH) or (state = PLAYERSTATE.FREE) or (state = PLAYERSTATE.ATTACK_SLASH)
{
	hsp_walk = 4
}
else
{
	hsp_walk = 1.5
}

	
}
switch (5){
	case "CCrouch":{
	
	}
}