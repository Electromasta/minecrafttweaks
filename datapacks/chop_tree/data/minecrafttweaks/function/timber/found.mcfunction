# Take the tree's top log; only if that worked, put the chopped log back (the player keeps its drop)
scoreboard players set #height mt_timber 0
scoreboard players set #ok mt_timber 0
execute positioned ~ ~1 ~ store result score #ok mt_timber run function minecrafttweaks:timber/climb with storage minecrafttweaks:timber
$execute if score #ok mt_timber matches 1 run setblock ~ ~ ~ minecraft:$(log)[axis=y]
