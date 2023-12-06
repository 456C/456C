execute as @s run team join Orange
execute as @s run playsound block.enchantment_table.use master @s ~ ~ ~ 10 0.5 0.5
execute as @s run playsound entity.villager.celebrate master @s ~ ~ ~ 10 1 1
execute as @s run tellraw @s {"text":"<Marco> I see you, champ!"}