if(place_meeting(x, y, objBlock)){
	instance_destroy();	
}
else if(place_meeting(x, y, target)){
	target.hp -= 35;
	instance_destroy();
}