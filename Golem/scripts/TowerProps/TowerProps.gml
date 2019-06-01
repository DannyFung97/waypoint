inst = instance_place(x, y, obj_Hurtbox);
if(inst && inst.enemy_is_royal == enemy_is_royal){
	inst = noone;
}
if(inst != noone){
	hp -= inst.true_damage;
}

if(hp <= 0){
	hp = 0;
	vsp = -fallSpeed;
	y -= vsp;
	fallLimit -= vsp;
	if(fallLimit <= 0){
		instance_destroy();	
	}
}