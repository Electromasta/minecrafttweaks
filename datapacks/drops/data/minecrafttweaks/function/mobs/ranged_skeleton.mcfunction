# Ranged units are squishier: 30% less max health (skeleton 20 -> 14)
tag @s add mt_init
attribute @s minecraft:max_health modifier add minecrafttweaks:squishy -0.3 add_multiplied_total
# Clamp current health to the new max (x100 to keep the decimals)
execute store result score #max mt_tmp run attribute @s minecraft:max_health get 100
execute store result score #hp mt_tmp run data get entity @s Health 100
execute if score #hp mt_tmp > #max mt_tmp store result entity @s Health float 0.01 run scoreboard players get #max mt_tmp
