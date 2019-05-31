if(target == noone || !instance_exists(target)){
	if(distance_to_object(objRebelSoldier) < range){
		target = instance_nearest(x, y, objRebelSoldier);
	}
	else if(distance_to_object(obj_Player1) < range){
		target = instance_nearest(x, y, global.RoyalTarget);
	}
}
if(distance_to_object(target) <= range && hp > 0){
	projectile = instance_create_layer(x, y, "InstancesSpawns", objProjectile); 
	projectile.target = target;
	d = point_direction(x, y, target.x, target.y);
	projectile.direction = d;
	projectile.speed = projectileSpeed;
}
if(distance_to_object(target) > range){
	target = noone;	
}

alarm[0] = 5 * fireRate;