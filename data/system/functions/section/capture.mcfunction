

execute at @s[team=Teal,gamemode=adventure] as @e[type=marker,tag=section,tag=!d_magenta,tag=!d_lime,tag=!d_orange,tag=!d_teal,distance=..2,tag=!s_teal] at @s run function system:section/remove_tag/teal
execute at @s[team=Orange,gamemode=adventure] as @e[type=marker,tag=section,tag=!d_magenta,tag=!d_lime,tag=!d_orange,tag=!d_teal,distance=..2,tag=!s_orange] at @s run function system:section/remove_tag/orange
execute at @s[team=Lime,gamemode=adventure] as @e[type=marker,tag=section,tag=!d_magenta,tag=!d_lime,tag=!d_orange,tag=!d_teal,distance=..2,tag=!s_lime] at @s run function system:section/remove_tag/lime
execute at @s[team=Magenta,gamemode=adventure] as @e[type=marker,tag=section,tag=!d_magenta,tag=!d_lime,tag=!d_orange,tag=!d_teal,distance=..2,tag=!s_magenta] at @s run function system:section/remove_tag/magenta


execute at @s[team=Teal,gamemode=adventure] as @e[type=marker,tag=section,tag=!d_magenta,tag=!d_lime,tag=!d_orange,tag=!d_teal,distance=..2,tag=!s_teal] at @s run function system:section/add_tag/teal
execute at @s[team=Magenta,gamemode=adventure] as @e[type=marker,tag=section,tag=!d_magenta,tag=!d_lime,tag=!d_orange,tag=!d_teal,distance=..2,tag=!s_magenta] at @s run function system:section/add_tag/magenta
execute at @s[team=Lime,gamemode=adventure] as @e[type=marker,tag=section,tag=!d_magenta,tag=!d_lime,tag=!d_orange,tag=!d_teal,distance=..2,tag=!s_lime] at @s run function system:section/add_tag/lime
execute at @s[team=Orange,gamemode=adventure] as @e[type=marker,tag=section,tag=!d_magenta,tag=!d_lime,tag=!d_orange,tag=!d_teal,distance=..2,tag=!s_orange] at @s run function system:section/add_tag/orange





