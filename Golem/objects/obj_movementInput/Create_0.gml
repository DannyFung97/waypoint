/// @description Insert description here
// You can write your code in this editor
enum cr{
	hor,
	Attack,
	Jump,
	AttackPressed,
	JumpPressed,
	length = 5
}

//initialization of global.controls
for(i = 0; i < 2; i++){
	for(j = 0; j < cr.length; j++){
		global.controls[i,j] = 0;
	}
}
/*
global.animations[0, 0] = sprGolemIdle;
global.animations[0, 1] = sprGolemRun;
global.animations[0, 2] = sprGolemRunStop;
global.animations[0, 3] = sprGolemRunJump;
global.animations[0, 4] = sprGolemIdleJump;
global.animations[0, 5] = sprGolemATK;

global.animations[1, 0] = sprDeathDudeIdle;
global.animations[1, 1] = sprDeathDudeRun;
global.animations[1, 2] = sprDeathDudeRunStop;
global.animations[1, 3] = sprDeathDudeRunJump;
global.animations[1, 4] = sprDeathDudeIdleJumpUp;
global.animations[1, 5] = sprDeathDudeAtk;*/