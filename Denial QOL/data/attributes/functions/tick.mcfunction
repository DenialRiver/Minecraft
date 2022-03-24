execute as @a store result score @s xplevel run experience query @s levels
execute as @a[nbt={Inventory:[{Slot:100b,tag:{xpspeed:1}}]}] run scoreboard players operation @s xplevel /= 5 xplevel
execute as @a[nbt={Inventory:[{Slot:100b,tag:{xpspeed:1}}]},advancements={main:xp1=false},scores={xplevel=20..}] run advancement grant @s only main:xp1
execute as @a[nbt={Inventory:[{Slot:100b,tag:{xpspeed:1}}]}] run scoreboard players operation @s finalspeed += @s xplevel
execute as @a[scores={finalspeed=0}] run attribute @s minecraft:generic.movement_speed base set 0.1
execute as @a[scores={finalspeed=1}] run attribute @s minecraft:generic.movement_speed base set 0.101
execute as @a[scores={finalspeed=2}] run attribute @s minecraft:generic.movement_speed base set 0.102
execute as @a[scores={finalspeed=3}] run attribute @s minecraft:generic.movement_speed base set 0.103
execute as @a[scores={finalspeed=4}] run attribute @s minecraft:generic.movement_speed base set 0.104
execute as @a[scores={finalspeed=5}] run attribute @s minecraft:generic.movement_speed base set 0.105
execute as @a[scores={finalspeed=6}] run attribute @s minecraft:generic.movement_speed base set 0.106
execute as @a[scores={finalspeed=7}] run attribute @s minecraft:generic.movement_speed base set 0.107
execute as @a[scores={finalspeed=8}] run attribute @s minecraft:generic.movement_speed base set 0.108
execute as @a[scores={finalspeed=9}] run attribute @s minecraft:generic.movement_speed base set 0.109
execute as @a[scores={finalspeed=10}] run attribute @s minecraft:generic.movement_speed base set 0.11
execute as @a[scores={finalspeed=11}] run attribute @s minecraft:generic.movement_speed base set 0.111
execute as @a[scores={finalspeed=12}] run attribute @s minecraft:generic.movement_speed base set 0.112
execute as @a[scores={finalspeed=13}] run attribute @s minecraft:generic.movement_speed base set 0.113
execute as @a[scores={finalspeed=14}] run attribute @s minecraft:generic.movement_speed base set 0.114
execute as @a[scores={finalspeed=15}] run attribute @s minecraft:generic.movement_speed base set 0.115
execute as @a[scores={finalspeed=16}] run attribute @s minecraft:generic.movement_speed base set 0.116
execute as @a[scores={finalspeed=17}] run attribute @s minecraft:generic.movement_speed base set 0.117
execute as @a[scores={finalspeed=18}] run attribute @s minecraft:generic.movement_speed base set 0.118
execute as @a[scores={finalspeed=19}] run attribute @s minecraft:generic.movement_speed base set 0.119
execute as @a[scores={finalspeed=20..}] run attribute @s minecraft:generic.movement_speed base set 0.12