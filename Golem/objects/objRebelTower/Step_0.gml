inst = instance_place(x, y, obj_hitboxOfRoyal);
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