
execute unless block ~ ~ ~ air at @s run tp @s[tag=!tpfix] ~ ~1 ~
tag @s add tpfix
scoreboard players add @s obj 1

execute at @s run effect give @a[distance=..1] levitation 1 5 false

execute at @s[scores={obj=1}] positioned ^1 ^ ^ if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["wallmarker"]}
execute at @s[scores={obj=1}] positioned ~ ~ ~ if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["wallmarker"]}
execute at @s[scores={obj=1}] positioned ^-1 ^ ^ if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["wallmarker"]}
execute at @s[scores={obj=1}] positioned ^2 ^ ^ if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["wallmarker"]}
execute at @s[scores={obj=1}] positioned ^-2 ^ ^ if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["wallmarker"]}

execute as @s[scores={obj=2}] at @s positioned ^1 ^1 ^ if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["wallmarker"]}
execute as @s[scores={obj=2}] at @s positioned ~ ~1 ~ if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["wallmarker"]}
execute as @s[scores={obj=2}] at @s positioned ^-1 ^1 ^ if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["wallmarker"]}
execute as @s[scores={obj=2}] at @s positioned ^2 ^1 ^ if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["wallmarker"]}
execute as @s[scores={obj=2}] at @s positioned ^-2 ^1 ^ if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["wallmarker"]}

execute as @s[scores={obj=3}] at @s positioned ^1 ^2 ^ if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["wallmarker"]}
execute as @s[scores={obj=3}] at @s positioned ~ ~2 ~ if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["wallmarker"]}
execute as @s[scores={obj=3}] at @s positioned ^-1 ^2 ^ if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["wallmarker"]}
execute as @s[scores={obj=3}] at @s positioned ^2 ^2 ^ if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["wallmarker"]}
execute as @s[scores={obj=3}] at @s positioned ^-2 ^2 ^ if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["wallmarker"]}

execute as @s[scores={obj=4}] at @s positioned ^1 ^3 ^ if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["wallmarker"]}
execute as @s[scores={obj=4}] at @s positioned ~ ~3 ~ if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["wallmarker"]}
execute as @s[scores={obj=4}] at @s positioned ^-1 ^3 ^ if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["wallmarker"]}
execute as @s[scores={obj=4}] at @s positioned ^2 ^3 ^ if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["wallmarker"]}

kill @s[scores={obj=85..}]

