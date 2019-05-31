/// @description Insert description here
// You can write your code in this editor
if(abs(obj_Player1.x - obj_Player2.x) > 7168){
	view_visible[0] = true;
	view_visible[1] = true;
	view_visible[2] = false;
	if(obj_Player1.x > obj_Player2.x){
		camera_set_view_target(view_camera[0], obj_Player2);
		camera_set_view_target(view_camera[1], obj_Player1);
	}
	else{
		camera_set_view_target(view_camera[0], obj_Player1);
		camera_set_view_target(view_camera[1], obj_Player2);
	}
}
else{
	view_visible[0] = false;
	view_visible[1] = false;
	view_visible[2] = true;
}