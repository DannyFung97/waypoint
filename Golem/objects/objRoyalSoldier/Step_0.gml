hsp = moveSpeed * image_xscale;

if(!place_empty(x-1,y)){
	check_ally = instance_place(x+1,y,objRoyalSoldier);
	if(check_ally != noone){
		if(check_ally.sprite_index == sprRoyalSoldierWait){
			sprite_index = sprRoyalSoldierWait;
			hsp = 0;
		}
	}
	else{
		check_enemyPlayer = instance_place(x-1,y,p);
		check_enemySoldier = instance_place(x-1,y,e);
		check_enemyTower = instance_place(x-1,y,t);
		if((check_enemyPlayer != noone && check_enemyPlayer.enemy_is_royal) || check_enemySoldier != noone || check_enemyTower != noone){
			sprite_index = sprRoyalSoldierAttack;
			hsp = 0;
		}
	}
}
else if(place_empty(x-1,y)){
	sprite_index = sprRoyalSoldierRun;
}

enemy_spawn = instance_place(x, y, objRebelSpawn);
if(enemy_spawn != noone){
		enemy_spawn.hp -= damage;
		instance_destroy();
}

// attack on certain frame
if(sprite_index == sprRoyalSoldierAttack && random_range(0,5) <= 2){
	if(floor(image_index) == 5) {
		CreateAttack(x, y, image_xscale, spr_SoldierHit, true_damage, obj_hitboxOfRoyal, 0, dam_arr[0], chance, noone, 0);
	} 
}

// Attack Collision
inst = instance_place(x, y, obj_hitboxOfRebel);
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