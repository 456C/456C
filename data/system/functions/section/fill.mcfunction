execute as @e[type=marker,tag=section,tag=!d_magenta,tag=!d_lime,tag=!d_orange,tag=!d_teal,tag=s_teal] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 light_blue_concrete_powder
execute as @e[type=marker,tag=section,tag=!d_magenta,tag=!d_lime,tag=!d_orange,tag=!d_teal,tag=s_magenta] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 magenta_concrete_powder
execute as @e[type=marker,tag=section,tag=!d_magenta,tag=!d_lime,tag=!d_orange,tag=!d_teal,tag=s_lime] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 lime_concrete_powder 
execute as @e[type=marker,tag=section,tag=!d_magenta,tag=!d_lime,tag=!d_orange,tag=!d_teal,tag=s_orange] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 orange_concrete_powder



execute as @e[type=marker,tag=section,tag=!d_magenta,tag=!d_lime,tag=!d_orange,tag=!d_teal,tag=!s_orange,tag=!s_teal,tag=!s_lime,tag=!s_magenta,tag=!s_red] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 green_concrete_powder

execute as @e[type=marker,tag=section,tag=!d_magenta,tag=!d_lime,tag=!d_orange,tag=!d_teal,tag=s_red] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 red_concrete_powder

playsound entity.shulker_bullet.hit master @a[distance=..10] ~ ~ ~ 0.2 1 0.3 
particle end_rod ~ ~0.25 ~ 0.01 0.01 0.01 0.1 10 force

tag @s add processed