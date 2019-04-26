//NOT BEING USED
if (sprite_index != sPlayer_SlashAir)
{
	y = y + grv;
	x += hsp
	sprite_index = sPlayer_SlashAir;
	image_index = 0;
	ds_list_clear(hitByAttack);
}

//Use attack hitbox & check for hits
mask_index = sAttack_SlashHB
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
				hitfrom = other.direction
				Enemyhit(2);
			}
		}
	}
}
ds_list_destroy(hitByAttackNow);
mask_index = sPlayer;

if (animation_end(sPlayer_SlashAir))
{
	sprite_index = sPlayerA;
	state = PLAYERSTATE.FREE
}

if (animation_end())
{
	sprite_index = sPlayerA;
	state = PLAYERSTATE.FREE;
}	