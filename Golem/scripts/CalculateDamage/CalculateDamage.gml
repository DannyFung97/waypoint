///CalculateDamage(inst.true_damage, inst.damage_type_number, inst.damage_type_amount, res_arr, armor, inst.chance, inst.chance_crit_mult);
bonus_damage = 0;
crit = random_range(0,1);
if(crit <= argument4){
	argument5 *= argument6;
}
if(argument2 > argument3[argument1]){
	bonus_damage += (argument2 - res_arr[argument1]);
}
return (argument0 + max(bonus_damage, 0))*(1 - argument4);