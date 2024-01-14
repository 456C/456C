
# Load config file
# function system:mob/config/floor<#>_<mob_name>
function system:mob/config/floor1_hoglin2


#Summon mob with the tag 'NotProcessed' and tag mob with its name
execute at @s run summon hoglin ~ ~ ~ {Tags:["NotProcessed"],PersistenceRequired:0b,IsImmuneToZombification:1b,CannotBeHunted:1b,active_effects:[{id:"minecraft:speed",amplifier:10b,duration:20000000,show_particles:0b},{id:"minecraft:jump_boost",amplifier:1b,duration:20000000,show_particles:0b},{id:"minecraft:invisibility",amplifier:1b,duration:360,show_particles:0b}],Attributes:[{Name:generic.max_health,Base:45},{Name:generic.follow_range,Base:45},{Name:generic.knockback_resistance,Base:0.2},{Name:generic.attack_damage,Base:12},{Name:generic.attack_knockback,Base:4}]}
execute at @s run summon hoglin ~ ~ ~ {Tags:["NotProcessed"],PersistenceRequired:0b,IsImmuneToZombification:1b,CannotBeHunted:1b,active_effects:[{id:"minecraft:speed",amplifier:10b,duration:20000000,show_particles:0b},{id:"minecraft:jump_boost",amplifier:1b,duration:20000000,show_particles:0b},{id:"minecraft:invisibility",amplifier:1b,duration:360,show_particles:0b}],Attributes:[{Name:generic.max_health,Base:45},{Name:generic.follow_range,Base:45},{Name:generic.knockback_resistance,Base:0.2},{Name:generic.attack_damage,Base:12},{Name:generic.attack_knockback,Base:4}]}
execute at @s run summon hoglin ~ ~ ~ {Tags:["NotProcessed"],PersistenceRequired:0b,IsImmuneToZombification:1b,CannotBeHunted:1b,active_effects:[{id:"minecraft:speed",amplifier:10b,duration:20000000,show_particles:0b},{id:"minecraft:jump_boost",amplifier:1b,duration:20000000,show_particles:0b},{id:"minecraft:invisibility",amplifier:1b,duration:360,show_particles:0b}],Attributes:[{Name:generic.max_health,Base:45},{Name:generic.follow_range,Base:45},{Name:generic.knockback_resistance,Base:0.2},{Name:generic.attack_damage,Base:12},{Name:generic.attack_knockback,Base:4}]}
execute at @s run summon hoglin ~ ~ ~ {Tags:["NotProcessed"],PersistenceRequired:0b,IsImmuneToZombification:1b,CannotBeHunted:1b,active_effects:[{id:"minecraft:speed",amplifier:10b,duration:20000000,show_particles:0b},{id:"minecraft:jump_boost",amplifier:1b,duration:20000000,show_particles:0b},{id:"minecraft:invisibility",amplifier:1b,duration:360,show_particles:0b}],Attributes:[{Name:generic.max_health,Base:45},{Name:generic.follow_range,Base:45},{Name:generic.knockback_resistance,Base:0.2},{Name:generic.attack_damage,Base:12},{Name:generic.attack_knockback,Base:4}]}

tag @e[tag=NotProcessed] add floor1_hoglin2
execute as @e[tag=NotProcessed] run attribute @s generic.movement_speed base set 0.35

# Adds ability tags to the mob
# uses Predicate information to decide whether or not to provide with tag
execute if score $maxability obj matches 1.. if predicate system:0_15 as @e[tag=NotProcessed] run function system:mob/tags/floor1_hoglin
scoreboard players remove $maxabilities obj 1


# Clears tag 'NotProcessed' indicating that all processes have been completed
execute as @e[tag=NotProcessed] run tag @s remove NotProcessed

