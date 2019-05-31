/// @description Insert description here
// You can write your code in this editor
var type = async_load[? "event_type"];
var index = async_load[? "pad_index"];

if ((type == "gamepad discovered") && gamepad_is_connected(index)){
	show_debug_message("Gamepad Connected: " + string(index) + " | " + gamepad_get_description(index));
}
else{
	show_debug_message("Gamepad Disconnected: " + string(index) + " | " + gamepad_get_description(index));
}
