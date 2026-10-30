# A data pack can't change an item's default components, so leather armor gets its stealth components when worn
# Revoked so the advancement can fire on the next inventory change
advancement revoke @s only minecrafttweaks:leather_stealth/worn
execute if items entity @s armor.head minecraft:leather_helmet[!custom_data~{mt_stealth:1}] run function minecrafttweaks:leather_stealth/stamp_slot {slot:"head"}
execute if items entity @s armor.chest minecraft:leather_chestplate[!custom_data~{mt_stealth:1}] run function minecrafttweaks:leather_stealth/stamp_slot {slot:"chest"}
execute if items entity @s armor.legs minecraft:leather_leggings[!custom_data~{mt_stealth:1}] run function minecrafttweaks:leather_stealth/stamp_slot {slot:"legs"}
execute if items entity @s armor.feet minecraft:leather_boots[!custom_data~{mt_stealth:1}] run function minecrafttweaks:leather_stealth/stamp_slot {slot:"feet"}
