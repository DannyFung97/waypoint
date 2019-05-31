/// @description Insert description here
// You can write your code in this editor
action = 10;
grav = 14;

character[0] = objDeathDude;
player1 = instance_create_depth(1528, 4048, "InstancesSpawns", character[0]);
player1.i = 0;
player1.image_xscale = 1;
player1.enemy_is_royal = true;
player1.hb = obj_hitboxOfRebel;
player1.ebh = obj_hitboxOfRoyal;
global.RoyalTarget = character[0];

character[1] = objGolemPlayer;
player2 = instance_create_depth(35715, 4048, "InstancesSpawns", character[1]);
player2.i = 1;
player2.image_xscale = -1;
player2.enemy_is_royal = false;
player2.hb = obj_hitboxOfRoyal;
player2.ebh = obj_hitboxOfRebel;
global.RebelTarget = character[1];

Preconfiguration(character);