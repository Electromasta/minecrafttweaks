# The hole: empty, the same log directly above, and something solid below (ground or more trunk)
scoreboard players add #steps mt_timber 1
$execute if block ~ ~ ~ #minecraft:air if block ~ ~1 ~ minecraft:$(log) unless block ~ ~-1 ~ #minecraft:air run return run function minecrafttweaks:timber/found with storage minecrafttweaks:timber
# Hit a log first or ran past reach (28 x 0.25 = 7 blocks): not a trunk chop, leave it vanilla
execute if block ~ ~ ~ #minecraft:logs run return fail
execute if score #steps mt_timber matches 28.. run return fail
execute positioned ^ ^ ^0.25 run function minecrafttweaks:timber/ray with storage minecrafttweaks:timber
