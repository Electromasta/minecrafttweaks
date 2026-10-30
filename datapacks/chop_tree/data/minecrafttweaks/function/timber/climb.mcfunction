# Walk up the trunk, following diagonal branches (acacia, big oaks), until there's no log above
scoreboard players add #height mt_timber 1
execute if score #height mt_timber matches 48.. run return fail
$execute if block ~ ~1 ~ minecraft:$(log) positioned ~ ~1 ~ run return run function minecrafttweaks:timber/climb with storage minecrafttweaks:timber
$execute if block ~1 ~1 ~ minecraft:$(log) positioned ~1 ~1 ~ run return run function minecrafttweaks:timber/climb with storage minecrafttweaks:timber
$execute if block ~-1 ~1 ~ minecraft:$(log) positioned ~-1 ~1 ~ run return run function minecrafttweaks:timber/climb with storage minecrafttweaks:timber
$execute if block ~ ~1 ~1 minecraft:$(log) positioned ~ ~1 ~1 run return run function minecrafttweaks:timber/climb with storage minecrafttweaks:timber
$execute if block ~ ~1 ~-1 minecraft:$(log) positioned ~ ~1 ~-1 run return run function minecrafttweaks:timber/climb with storage minecrafttweaks:timber
$execute if block ~1 ~1 ~1 minecraft:$(log) positioned ~1 ~1 ~1 run return run function minecrafttweaks:timber/climb with storage minecrafttweaks:timber
$execute if block ~1 ~1 ~-1 minecraft:$(log) positioned ~1 ~1 ~-1 run return run function minecrafttweaks:timber/climb with storage minecrafttweaks:timber
$execute if block ~-1 ~1 ~1 minecraft:$(log) positioned ~-1 ~1 ~1 run return run function minecrafttweaks:timber/climb with storage minecrafttweaks:timber
$execute if block ~-1 ~1 ~-1 minecraft:$(log) positioned ~-1 ~1 ~-1 run return run function minecrafttweaks:timber/climb with storage minecrafttweaks:timber
# This is the top log. Natural leaves next to it means a real tree, not a player build
execute unless function minecrafttweaks:timber/near_leaves run return fail
setblock ~ ~ ~ air
return 1
