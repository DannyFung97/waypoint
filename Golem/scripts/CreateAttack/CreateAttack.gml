///CreateAttack(x, y, image_xscale, sprite_index, true_damage, enemy_is_royal, damage_type_number, damage_type_amount, chance, chance_effect, chance_crit_mult);
box = instance_create_layer(argument0, argument1, "InstancesSpawns", argument5);
box.image_xscale = argument2;
box.sprite_index = argument3;
box.true_damage = argument4;
box.damage_type_number = argument6;
box.damage_type_amount = argument7;
box.chance = argument8;
box.chance_effect = argument9;
box.chance_crit_mult = argument10;