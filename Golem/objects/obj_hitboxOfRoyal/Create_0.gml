/// @description Insert description here
// You can write your code in this editor
true_damage = 0;
image_xscale = 1;
sprite_index = noone;
enemy_is_royal = false;
damage_type_number = 0;
damage_type_amount = 0;
chance = 0;
chance_crit_mult = 0;
chance_effect = noone;

/* CHANCE EFFECTS: Player stats will reset from chance effects when respawning
shred: Bypass armor and deal shred damage over time
impact: Knockback, bypass impact resistance, and deal impact damage
pierce: Reduce armor and deal pierce damage
crush: Deal crush damage, stun, and temporarily halve all resistances
fire: Deal fire damage over time and more general damage per hit
water: Reduce true damage, movement and attack speed
toxin: Reduce max health cap and deal toxin damage over time
shock: Deal shock damage in a radius, damaging all enemies within
*/