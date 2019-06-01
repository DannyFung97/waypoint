hsp = global.controls[i, cr.hor] * moveSpeed;

// Attack Collision, detection by the hurtbox of the enemy
inst = instance_place(x, y, ehb);
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