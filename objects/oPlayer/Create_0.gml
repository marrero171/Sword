hsp = 0;
vsp = 0;
hsp_frac = 0;
vsp_frac = 0;

hsp_acc = 1;
hsp_fricc_ground = 0.50;
hsp_fricc_air = 0.15;
hsp_walk = 4;
hsp_wjump = 4;
hsp_stop = -1;

vsp_jump = -12;
vsp_max = 15;
vsp_wjump = -12;
vsp_max_wall = 6;

onground = false;
onwall = 0;

dust = 0;

grv = 0.6;
grv_wall = 0.2;

jumpbuffer = 0;
walljumpdelay = 0;
walljumpdelay_max = 17;

state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();

enum PLAYERSTATE
{
	CROUCH,
	CRAWL,
	FREE,
	ATTACK_SLASH,
	ATTACK_COMBO,
	ATTACK_WAVE,
	JUMP_ATTACK,
}
