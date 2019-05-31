instance_create_layer(objRoyalSpawn.x, objRoyalSpawn.y, "InstancesSpawns", objRoyalSoldier);
numSpawns++;
alarm[0] = 40;
if(numSpawns == 3){
	numSpawns = 0;
	alarm[0] = 30 * timeForAction;
}