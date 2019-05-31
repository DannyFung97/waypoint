///Preconfiguration(char)
for(i = 0; i < 2; i++){
	switch(argument0[i]){
	
	case objGolemPlayer:
		global.animations[i, 0] = sprGolemIdle;
		global.animations[i, 1] = sprGolemRun;
		global.animations[i, 2] = sprGolemRunStop;
		global.animations[i, 3] = sprGolemRunJump;
		global.animations[i, 4] = sprGolemIdleJump;
		global.animations[i, 5] = sprGolemATK;
		break;
	
	case objDeathDude:
		global.animations[i, 0] = sprDeathDudeIdle;
		global.animations[i, 1] = sprDeathDudeRun;
		global.animations[i, 2] = sprDeathDudeRunStop;
		global.animations[i, 3] = sprDeathDudeRunJump;
		global.animations[i, 4] = sprDeathDudeIdleJumpUp;
		global.animations[i, 5] = sprDeathDudeAtk;
		break;
	}
}