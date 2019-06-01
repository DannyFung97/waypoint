hsp = moveSpeed * image_xscale;
dir = image_xscale*1

if(!place_empty(x+dir,y)){
	check_ally = instance_place(x+dir,y,a);
	if(check_ally != noone){
		if(check_ally.sprite_index == wait){
			sprite_index = wait;
			hsp = 0;
		}
	}
	else{
		check_enemyPlayer = instance_place(x+dir,y,p);
		check_enemySoldier = instance_place(x+dir,y,e);
		check_enemyTower = instance_place(x+dir,y,t);
		if((check_enemyPlayer != noone && !check_enemyPlayer.enemy_is_royal) || check_enemySoldier != noone || check_enemyTower != noone){
			sprite_index = attack;
			hsp = 0;
		}
	}
}
else if(place_empty(x+dir,y)){
	sprite_index = run;
}

enemy_spawn = instance_place(x, y, enemy_spawn);
if(enemy_spawn != noone){
		enemy_spawn.hp -= true_damage;
		instance_destroy();
}

// attack on certain frame
if(sprite_index == attack && random_range(0,5) <= 2){
	if(floor(image_index) == 5) {
		CreateAttack(x, y, image_xscale, soldier_hitbox_spr, true_damage, enemy_is_royal, 0, dam_arr[0], chance, noone, 0);
	} 
}

// Attack Collision
inst = instance_place(x, y, obj_Hurtbox);
if(inst && inst.enemy_is_royal == enemy_is_royal){
	inst = noone;
}
if(inst != noone && !is_hit){
	hp -= CalculateDamage(inst.true_damage, inst.damage_type_number, inst.damage_type_amount, res_arr, armor, inst.chance, inst.chance_crit_mult);
	is_hit = true;
}
else{
	is_hit = false;
}

if(hp <= 0){
	instance_destroy();	
}

CollisionCheck()