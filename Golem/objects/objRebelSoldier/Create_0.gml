hsp = 0;
vsp = 0;
moveSpeed = 28;
attacked = false;
is_hit = false;
image_xscale = 1;
target = noone;
hp = 70;
chance = 0;
true_damage = 10;
a = objRebelSoldier;
o = objBlock;
e = objRoyalSoldier;
p = global.RoyalTarget;
t = objRoyalTower;
enemy_is_royal = true;
check_ally = noone;
//damage
dam_arr[0] = 5;
dam_arr[1] = 5;
dam_arr[2] = 5;
dam_arr[3] = 5;
dam_arr[4] = 5;
dam_arr[5] = 5;
dam_arr[6] = 5;
dam_arr[7] = 5;
//resistance
res_arr[0] = 5;
res_arr[1] = 5;
res_arr[2] = 5;
res_arr[3] = 5;
res_arr[4] = 5;
res_arr[5] = 5;
res_arr[6] = 5;
res_arr[7] = 5;
//stats
armor = 0;
inflicted_effect = noone;
//sprites
run = sprRebelSoldierRun;
wait = sprRebelSoldierWait;
attack = sprRebelSoldierAttack;
soldier_hitbox_spr = spr_SoldierHit;
//objects
enemy_spawn = objRoyalSpawn;