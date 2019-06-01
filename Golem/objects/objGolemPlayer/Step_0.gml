PlayerBasics()
//Horizontal movement
if(global.controls[i, cr.Attack] && !inAir){
	sprite_index = global.animations[i,5];
	if(attacking == false){
		image_index = 1;
	}
	attacking = true; // if not in air and on ground, can attack
}
if(attacking){ // if attacking...

//basic attack functions
	if(image_index > 3 && image_index <= 4){
		CreateAttack(x, y, image_xscale, hb, true_damage, enemy_is_royal, 0, dam_arr[0], chance, chance_effect, chance_crit_mult);
	}
	if(image_index > image_number - 1){
		attacking = false;
	}
	hsp = 0;
}
else{
	if(hsp != 0){
		if(inAir == false){
			sprite_index = global.animations[i, 1]; // running
		}
		else{
			sprite_index = global.animations[i, 3]; // run-jumping
		}
		if(hsp > 0){
			image_xscale = 1;
		}
		else{
			image_xscale = -1;
		}
		lastMove = true;
	}

	//Vertical movement
	if (vsp < 140) vsp += grav;
	if(place_meeting(x,y+1,o)){
		vsp = global.controls[i, cr.JumpPressed] * -jumpSpeed;
	}
	if (!place_meeting(x,y+1,o) && hsp != 0){
		sprite_index = global.animations[i, 3]; // run-jumping
		inAir = true;
	}
	else if(place_meeting(x,y+1,o) && hsp != 0){
		sprite_index = global.animations[i, 1]; // running
		inAir = false;
	}
	else if(place_meeting(x,y+1,o) && hsp == 0 && lastMove){
		sprite_index = global.animations[i, 2]; // runstop
		inAir = false;
		lastMove = false;
	}
	else if(place_meeting(x,y+1,o) && hsp == 0){
		sprite_index = global.animations[i, 0]; // idle
		inAir = false;
	}
	else{
		sprite_index = global.animations[i, 4]; // idle jumping
		inAir = true;
		lastMove = false;
	}

}