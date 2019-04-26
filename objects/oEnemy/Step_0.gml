

if (state == ENEMYSTATE.FREE)
{
#region
vsp = vsp + grv;


//horizontal collision
if (place_meeting(x+hsp,y,oWall))
{
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}
x = x + hsp;

//Vertical collision
if (place_meeting(x,y+vsp,oWall))
{
	while(!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;
//Animation
if (!place_meeting(x,y+1,oWall)) 
{
	sprite_index = sEnemyA
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sEnemy;
	}
	else
	{
		sprite_index = sEnemyR;
	}
}
if (hsp != 0) image_xscale = sign(hsp);
#endregion
}
if (state == ENEMYSTATE.DEAD)
{
#region
	
	
instance_destroy();
	

#endregion
}
if (state == ENEMYSTATE.HIT)
{
	#region
	EnemyHit = Enemyhp-1;
if (EnemyHit)
{
 sprite_index = sEnemyHit;
 image_speed = 1;
 walksp=0;
}
if (animation_end())
{
	state = ENEMYSTATE.FREE
}
if (Enemyhp <= 0)
{
 state = ENEMYSTATE.DEAD	
}
	#endregion
}
if (state = ENEMYSTATE.DEAD)
{
	instance_create_layer(x,y,layer,oEnemyD)
	
	
	instance_destroy()
	
}