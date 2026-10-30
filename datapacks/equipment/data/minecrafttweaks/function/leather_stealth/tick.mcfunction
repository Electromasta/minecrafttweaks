# Leather stealth set bonus: the tag tracks who has it, so modifiers are only touched on change
execute as @a[tag=!mt_leather_stealth] if predicate minecrafttweaks:leather_stealth run function minecrafttweaks:leather_stealth/on
execute as @a[tag=mt_leather_stealth] unless predicate minecrafttweaks:leather_stealth run function minecrafttweaks:leather_stealth/off
# Refreshed rather than infinite, so it lapses on its own and never clears a real invisibility potion
effect give @a[tag=mt_leather_stealth] minecraft:invisibility 1 0 true
