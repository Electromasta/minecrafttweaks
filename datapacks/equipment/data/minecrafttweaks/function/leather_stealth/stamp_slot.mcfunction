# Worn pieces multiply, so with a full set mobs notice you at 0.41x range (0.33x sneaking)
$item modify entity @s armor.$(slot) minecrafttweaks:leather_stealth
# A full set sneaks like Swift Sneak II (+0.15 per level). Two pieces sharing a modifier ID would replace each other, so the ID includes the slot
$item modify entity @s armor.$(slot) {type:"minecraft:set_attributes",replace:false,modifiers:[{attribute:"minecraft:sneaking_speed",id:"minecrafttweaks:leather_stealth.$(slot)",amount:0.075,operation:"add_value",slot:"$(slot)"}]}
