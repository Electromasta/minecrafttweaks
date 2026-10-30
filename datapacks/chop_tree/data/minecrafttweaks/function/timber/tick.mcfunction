# Top-down chopping: a log mined from a natural tree is put back and the tree's top log is taken instead
execute as @a[gamemode=!creative,scores={mt_mined_oak=1..}] at @s run function minecrafttweaks:timber/start {log:"oak_log"}
execute as @a[gamemode=!creative,scores={mt_mined_spruce=1..}] at @s run function minecrafttweaks:timber/start {log:"spruce_log"}
execute as @a[gamemode=!creative,scores={mt_mined_birch=1..}] at @s run function minecrafttweaks:timber/start {log:"birch_log"}
execute as @a[gamemode=!creative,scores={mt_mined_jungle=1..}] at @s run function minecrafttweaks:timber/start {log:"jungle_log"}
execute as @a[gamemode=!creative,scores={mt_mined_acacia=1..}] at @s run function minecrafttweaks:timber/start {log:"acacia_log"}
execute as @a[gamemode=!creative,scores={mt_mined_dark_oak=1..}] at @s run function minecrafttweaks:timber/start {log:"dark_oak_log"}
execute as @a[gamemode=!creative,scores={mt_mined_mangrove=1..}] at @s run function minecrafttweaks:timber/start {log:"mangrove_log"}
execute as @a[gamemode=!creative,scores={mt_mined_cherry=1..}] at @s run function minecrafttweaks:timber/start {log:"cherry_log"}
execute as @a[gamemode=!creative,scores={mt_mined_pale_oak=1..}] at @s run function minecrafttweaks:timber/start {log:"pale_oak_log"}
execute as @a[gamemode=!creative,scores={mt_mined_poplar=1..}] at @s run function minecrafttweaks:timber/start {log:"poplar_log"}
scoreboard players reset @a[scores={mt_mined_oak=1..}] mt_mined_oak
scoreboard players reset @a[scores={mt_mined_spruce=1..}] mt_mined_spruce
scoreboard players reset @a[scores={mt_mined_birch=1..}] mt_mined_birch
scoreboard players reset @a[scores={mt_mined_jungle=1..}] mt_mined_jungle
scoreboard players reset @a[scores={mt_mined_acacia=1..}] mt_mined_acacia
scoreboard players reset @a[scores={mt_mined_dark_oak=1..}] mt_mined_dark_oak
scoreboard players reset @a[scores={mt_mined_mangrove=1..}] mt_mined_mangrove
scoreboard players reset @a[scores={mt_mined_cherry=1..}] mt_mined_cherry
scoreboard players reset @a[scores={mt_mined_pale_oak=1..}] mt_mined_pale_oak
scoreboard players reset @a[scores={mt_mined_poplar=1..}] mt_mined_poplar
