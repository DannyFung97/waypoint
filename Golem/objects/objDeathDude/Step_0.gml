hsp = global.controls[i, cr.hor] * moveSpeed;

// Attack Collision
inst = instance_place(x, y, obj_hitboxOfRoyal);
show_debug_message("Player 1's "+string(inst));
if(inst != noone && !is_hit){
	hp -= CalculateDamage(inst.true_damage, inst.damage_type_number, inst.damage_type_amount, res_arr, armor, inst.chance, inst.chance_crit_mult);
	is_hit = true;
}
else{
	is_hit = false;
}

if(hp <= 0){
	//instance_destroy();
}

//Horizontal movement
if(global.controls[i, cr.Attack] && !inAir){
	attacking = true; // if not in air and on ground, can attack
}
if(attacking){ // if attacking...

//basic attack functions
	sprite_index = global.animations[i,5];
	if(image_index >= 1 && image_index <= 3){
		CreateAttack(x, y, image_xscale, sprDeathDude_Hit, true_damage, hb, 0, dam_arr[0], chance, chance_effect, chance_crit_mult);
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
		//this_sprite_index = sprite_index;
		//last_vsp = vsp;
		sprite_index = global.animations[i, 4]; // idle jumping
		//if(this_sprite_index == global.animations[i, 3]){
			if(vsp > last_vsp){
				sprite_index = sprDeathDudeIdleJumpDown;
			}
			/*else{
				sprite_index = sprDeathDudeIdleJumpUp;
			}
		}*/
		inAir = true;
		lastMove = false;
	}
}

//Horizontal collision
if (place_meeting(x+hsp,y,o))
{
    while(!place_meeting(x+sign(hsp),y,o))
    {
    x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

//Vertical collision
if (place_meeting(x,y+vsp,o))
{
    while(!place_meeting(x,y+sign(vsp),o))
    {
    y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;