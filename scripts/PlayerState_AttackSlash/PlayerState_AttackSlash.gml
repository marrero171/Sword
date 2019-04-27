//check and change sprite
if (sprite_index !=sAttack_Slash)
{
	x += hsp
	sprite_index = sAttack_Slash;
	image_index = 0;
	ds_list_clear(hitByAttack);
}

if (!onground)
{

image_speed = 1	
if (image_speed = 1)
{
	//calculate vertical movement
var grv_final = grv;
var vsp_max_final = vsp_max;

vsp += grv_final;
vsp = clamp(vsp,-vsp_max_final,vsp_max_final);

	x += sign(hsp);
}
}
//Use attack hitbox & check for hits
mask_index = sPlayer_SlashAir
var hitByAttackNow = ds_list_create();
var hits = instance_place_list(x,y,oEnemy,hitByAttackNow,false);
if (hits > 0)
{
	for (var i = 0; i < hits; i++)
	{
		//if this instance has not been hit by this attack
		var hitID = hitByAttackNow[| i];
		if (ds_list_find_index(hitByAttack,hitID) == -1)
		{
			ds_list_add(hitByAttack,hitID);
			with (hitID)
			{
				
				Enemyhit(2);
				
			}
		}
	}
}
ds_list_destroy(hitByAttackNow);
mask_index = sPlayer;

if (animation_end(sAttack_Slash)) and (onground)
{
	sprite_index = sPlayer;
	state = PLAYERSTATE.FREE
}
if (animation_end(sAttack_Slash)) and (!onground)
{
	sprite_index = sPlayerA;
	state = PLAYERSTATE.FREE;
}