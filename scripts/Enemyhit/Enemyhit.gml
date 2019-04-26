var _damage = argument0;

Enemyhp -= _damage
flsh = true;
if (Enemyhp > 0)
{
	state = ENEMYSTATE.HIT
}
else 
{
	state = ENEMYSTATE.DEAD
}