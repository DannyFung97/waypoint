//initialization of values
i = noone;
image_xscale = noone;
lastMove = false;
grav = obj_spawnctrl.grav;
inAir = false;
sprite_index = sprDeathDudeIdle;
attacking = false;
target = noone;
hp = 100;
hpCap = 100;
true_damage = 10;
moveSpeed = 50;
jumpSpeed = 140;
hsp = 0;
vsp = 0;
box = noone;
o = objBlock;
enemy_is_royal = noone;
is_hit = false;
hb = sprDeathDude_Hit;
ehb = sprGolem_Hit;
//damage
dam_arr[0] = 6; // shred
dam_arr[1] = 5; // impact
dam_arr[2] = 5; // pierce
dam_arr[3] = 5; // crush
dam_arr[4] = 0; // fire
dam_arr[5] = 0; // water
dam_arr[6] = 0; // toxin
dam_arr[7] = 0; // shock
//resistance
res_arr[0] = 4;
res_arr[1] = 5;
res_arr[2] = 4;
res_arr[3] = 3;
res_arr[4] = 5;
res_arr[5] = 7;
res_arr[6] = 3;
res_arr[7] = 6;
//stats
armor = .15;
chance = .3;
chance_effect = "shred";
chance_crit_mult = 2.3;
inflicted_effect = noone;
//exclusive values
this_sprite_index = noone;
last_vsp = 0;