# Datapacks don't get the broken block's position, so march along the player's view to find the hole
$data modify storage minecrafttweaks:timber log set value "$(log)"
scoreboard players set #steps mt_timber 0
# anchored feet after the first step so the eye offset isn't re-added on every recursion
execute anchored eyes positioned ^ ^ ^ anchored feet run function minecrafttweaks:timber/ray with storage minecrafttweaks:timber
