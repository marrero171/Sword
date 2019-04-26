//get player input
key_left = keyboard_check_direct(vk_left) or keyboard_check_direct(ord("A"))
key_right = keyboard_check_direct(vk_right) or keyboard_check_direct(ord("D"))
key_jump = keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("W"))
keyAttack = keyboard_check_pressed(ord("K"))
keyCrouch = keyboard_check_direct(ord("S"))


//horizontal collision
if (place_meeting(x+hsp,y,oWall))
{
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
	hsp_frac= 0;
}

//Horizontal move
x += hsp;

//vertical collision

if (place_meeting(x,y+vsp,oWall))
{
	var onepixel = sign(vsp);
	while (!place_meeting(x,y+onepixel,oWall)) y += onepixel;
	vsp = 0;
	vsp_frac = 0;
}
//Vertical move
y += vsp;
//calc curent status
onground = place_meeting(x,y+1,oWall);
onwall = place_meeting(x+1,y,oWall) - place_meeting(x-1,y,oWall);
if (onground) jumpbuffer = 6;

//change states
switch (state)
{
	case PLAYERSTATE.FREE : PlayerState_Free() ; break;
	case PLAYERSTATE.ATTACK_SLASH : PlayerState_AttackSlash() ; break;
	case PLAYERSTATE.CROUCH : PlayerState_Crouch() ; break;
	case PLAYERSTATE.ATTACK_COMBO : PlayerState_SlashCombo() ; break;
	case PLAYERSTATE.CRAWL : PlayerState_Crawl() ; break;
}