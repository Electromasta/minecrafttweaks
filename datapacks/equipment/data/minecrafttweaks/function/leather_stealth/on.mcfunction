# Sneaking in full leather: hidden from the locator bar, sneak like Swift Sneak II (+0.15 per level),
# and invisible (applied in tick; with 4 armor pieces mobs notice you at 0.56x range instead of 0.8x)
tag @s add mt_leather_stealth
attribute @s minecraft:waypoint_transmit_range modifier add minecrafttweaks:leather_stealth -1 add_multiplied_total
attribute @s minecraft:sneaking_speed modifier add minecrafttweaks:leather_stealth 0.3 add_value
