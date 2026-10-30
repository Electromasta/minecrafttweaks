# The dragon's death skips its loot table, so its drops are spawned here
# Revoked so the advancement can fire again when the dragon is respawned
advancement revoke @s only minecrafttweaks:mobs/dragon_killed
# Beside the exit portal rather than on it, so the drops don't fall through
execute in minecraft:the_end positioned 8 0 0 positioned over world_surface run loot spawn ~ ~1 ~ loot minecrafttweaks:mobs/ender_dragon
