# Once a second: tweak newly spawned mobs (the tag marks mobs already done, and modifiers save with the mob)
execute as @e[type=#minecrafttweaks:ranged_skeletons,tag=!mt_init] run function minecrafttweaks:mobs/ranged_skeleton
schedule function minecrafttweaks:second 1s replace
