instance_create_layer(objRebelSpawn.x, objRebelSpawn.y, "InstancesSpawns", objRebelSoldier);
numSpawns++;
alarm[0] = 40;
if(numSpawns == 3){
	numSpawns = 0;
	alarm[0] = 30 * timeForAction;
}