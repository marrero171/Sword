

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
if (hsp != 0) image_xscale = sign(hsp) * size;
image_yscale = size;
#endregion
}


if (state == ENEMYSTATE.HIT)
{
	#region
if (EnemyHit)
{
 sprite_index = sEnemyHit;
 image_speed = 1;
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
if (state == ENEMYSTATE.DEAD)
{

	with (instance_create_layer(x,y,layer,oEnemyD))
	{
	direction = other.hitfrom
	hsp = lengthdir_x (3,direction);
	vsp = lengthdir_y (3,direction)-2;
	if (sign(hsp) !=0) image_xscale = sign(hsp) * other.size
	image_yscale = other.size;
	}
	instance_destroy()
	
}