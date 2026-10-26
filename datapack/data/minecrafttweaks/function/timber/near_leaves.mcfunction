# Player-placed leaves are persistent=true, so this only matches leaves that grew
execute if block ~ ~1 ~ #minecraft:leaves[persistent=false] run return 1
execute if block ~1 ~ ~ #minecraft:leaves[persistent=false] run return 1
execute if block ~-1 ~ ~ #minecraft:leaves[persistent=false] run return 1
execute if block ~ ~ ~1 #minecraft:leaves[persistent=false] run return 1
execute if block ~ ~ ~-1 #minecraft:leaves[persistent=false] run return 1
return fail
