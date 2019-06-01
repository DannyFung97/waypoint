//initialization of values
i = noone;
image_xscale = noone;
lastMove = false;
grav = obj_spawnctrl.grav;
inAir = false;
sprite_index = sprGolemIdle;
attacking = false;
target = noone;
hp = 230;
hpCap = 230;
true_damage = 25;
moveSpeed = 45;
jumpSpeed = 120;
hsp = 0;
vsp = 0;
box = noone;
o = objBlock;
enemy_is_royal = noone;
is_hit = false;
hb = sprGolem_Hit;
ehb = sprDeathDude_Hit;
//damage
dam_arr[0] = 8; // shred (swords, blades, edges)
dam_arr[1] = 6; // impact (fists, hammers, explosions)
dam_arr[2] = 5; // pierce (bullets, rapiers, spears)
dam_arr[3] = 6; // crush (smashing, compression, deformation)
dam_arr[4] = 0; // fire
dam_arr[5] = 0; // water
dam_arr[6] = 0; // toxin
dam_arr[7] = 0; // shock
//resistance
res_arr[0] = 7;
res_arr[1] = 6;
res_arr[2] = 6;
res_arr[3] = 7;
res_arr[4] = 4;
res_arr[5] = 4;
res_arr[6] = 7;
res_arr[7] = 7;
//stats
armor = .35;
chance = .15;
chance_effect = "shred";
chance_crit_mult = 1.2;
inflicted_effect = noone;