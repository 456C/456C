
# cursed talisman

# success

execute as @s[scores={item2=0}] at @s run particle cloud ~ ~ ~ 0.01 0 0.01 0 10 force
execute as @s[scores={item2=0},team=Solo] at @s run summon armor_stand ~ ~2 ~ {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:11375114}}},{id:"leather_leggings",Count:1b,tag:{display:{color:7694424}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:13219744}}},{id:"piglin_head",Count:1b}],HandItems:[{id:"stick",Count:1b},{id:"stick",Count:1b}],Tags:["talismanrotate","talisman","solo2t"],DisabledSlots:4144959,Pose:{Head:[331f,0f,23f],LeftLeg:[0f,0f,355f],RightLeg:[0f,0f,8f],LeftArm:[0f,346f,0f],RightArm:[0f,7f,0f]}}
execute as @s[scores={item2=0},team=Teal] at @s run summon armor_stand ~ ~2 ~ {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:698285}}},{id:"leather_leggings",Count:1b,tag:{display:{color:3897985}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:5299687}}},{id:"piglin_head",Count:1b}],HandItems:[{id:"stick",Count:1b},{id:"stick",Count:1b}],Tags:["talismanrotate","talisman","teal2t"],DisabledSlots:4144959,Pose:{Head:[331f,0f,23f],LeftLeg:[0f,0f,355f],RightLeg:[0f,0f,8f],LeftArm:[0f,346f,0f],RightArm:[0f,7f,0f]}}
execute as @s[scores={item2=0},team=Lime] at @s run summon armor_stand ~ ~2 ~ {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:1027338}}},{id:"leather_leggings",Count:1b,tag:{display:{color:6129233}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:10416268}}},{id:"piglin_head",Count:1b}],HandItems:[{id:"stick",Count:1b},{id:"stick",Count:1b}],Tags:["talismanrotate","talisman","lime2t"],DisabledSlots:4144959,Pose:{Head:[331f,0f,23f],LeftLeg:[0f,0f,355f],RightLeg:[0f,0f,8f],LeftArm:[0f,346f,0f],RightArm:[0f,7f,0f]}}
execute as @s[scores={item2=0},team=Magenta] at @s run summon armor_stand ~ ~2 ~ {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:11340447}}},{id:"leather_leggings",Count:1b,tag:{display:{color:8472174}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:14850517}}},{id:"piglin_head",Count:1b}],HandItems:[{id:"stick",Count:1b},{id:"stick",Count:1b}],Tags:["talismanrotate","talisman","magenta2t"],DisabledSlots:4144959,Pose:{Head:[331f,0f,23f],LeftLeg:[0f,0f,355f],RightLeg:[0f,0f,8f],LeftArm:[0f,346f,0f],RightArm:[0f,7f,0f]}}
execute as @s[scores={item2=0},team=Orange] at @s run summon armor_stand ~ ~2 ~ {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:11362570}}},{id:"leather_leggings",Count:1b,tag:{display:{color:8281654}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:14991763}}},{id:"piglin_head",Count:1b}],HandItems:[{id:"stick",Count:1b},{id:"stick",Count:1b}],Tags:["talismanrotate","talisman","orange2t"],DisabledSlots:4144959,Pose:{Head:[331f,0f,23f],LeftLeg:[0f,0f,355f],RightLeg:[0f,0f,8f],LeftArm:[0f,346f,0f],RightArm:[0f,7f,0f]}}


execute as @s[scores={item2=0}] at @s run tp @e[tag=talismanrotate] ~ ~ ~ ~180 ~
execute as @s[scores={item2=0}] run tag @e[tag=talismanrotate] remove talismanrotate


execute as @s[scores={item2=0}] at @s run playsound entity.bat.takeoff master @a[distance=..15] ~ ~ ~ 0.5 1.3

# cooldown 
scoreboard players set @s[scores={item2=0}] item2 32


# failure

execute as @s[scores={right_click=1..,item2=1..}] run playsound block.note_block.bass master @s ~ ~ ~ 100 0.1

# loop

execute as @s[scores={item2=1,right_click=0},nbt=!{SelectedItem:{ tag:{cursedtalisman:1b}, id:"minecraft:piglin_head"}}] at @s run playsound block.note_block.bell master @s ~ ~ ~ 0.3 0.7
execute unless entity @s[scores={right_click=1..}] run scoreboard players remove @s[scores={item2=1..}] item2 1