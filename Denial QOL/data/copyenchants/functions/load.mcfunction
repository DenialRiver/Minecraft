execute store result score @s smitelevel run data get entity @s SelectedItem{}.tag.Enchantments[{id:"minecraft:smite"}].lvl
execute store result score @s sharpnesslevel run data get entity @s SelectedItem{}.tag.Enchantments[{id:"minecraft:sharpness"}].lvl
execute store result score @s banelevel run data get entity @s SelectedItem{}.tag.Enchantments[{id:"minecraft:bane_of_arthropods"}].lvl
execute store result score @s mendinglevel run data get entity @s SelectedItem{}.tag.Enchantments[{id:"minecraft:mending"}].lvl
execute store result score @s unbreakinglevel run data get entity @s SelectedItem{}.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
execute store result score @s kblevel run data get entity @s SelectedItem{}.tag.Enchantments[{id:"minecraft:knockback"}].lvl
execute store result score @s firelevel run data get entity @s SelectedItem{}.tag.Enchantments[{id:"minecraft:fire_aspect"}].lvl
execute store result score @s lootinglevel run data get entity @s SelectedItem{}.tag.Enchantments[{id:"minecraft:looting"}].lvl
execute store result score @s sweepinglevel run data get entity @s SelectedItem{}.tag.Enchantments[{id:"minecraft:sweeping"}].lvl
execute store result score @s vanishinglevel run data get entity @s SelectedItem{}.tag.Enchantments[{id:"minecraft:curse_of_vanishing"}].lvl
execute store result score @s damagelevel run data get entity @s SelectedItem{}.tag.Damage
execute store result score @s copperusecount run data get entity @s SelectedItem{}.tag.copperusecount
execute store result score @s rustlevel run data get entity @s SelectedItem{}.tag.rustlevel
execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] run scoreboard players set 59 damagelevel 59
execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] run scoreboard players operation 59 damagelevel -= @s damagelevel
execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] run scoreboard players operation @s damagelevel = 59 damagelevel
execute if entity @s[nbt={SelectedItem:{tag:{copper:1}}}] run scoreboard players add @s copperusecount 1
execute if entity @s[nbt={SelectedItem:{tag:{copper:1}}}] store result storage copyenchants:copy copperusecount int 1 run scoreboard players get @s copperusecount
execute if entity @s[nbt={SelectedItem:{tag:{copper:1}}}] run item modify entity @s weapon.mainhand copyenchants:copy
execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_sword",tag:{hrbat:1}}},scores={hrbatcd=60}] run item replace entity @s weapon.mainhand with iron_sword{Enchantments:[{id:"minecraft:knockback",lvl:3s}],hrbat:1,display:{Name:'[{"text":"Baseball Bat","italic":false}]',Lore:['[{"text":"","italic":false}]','[{"text":"Ability: Home Run","italic":false,"color":"gold"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Gains ","italic":false,"color":"gray"},{"text":"2 ","color":"green"},{"text":"damage and knockback III","color":"gray"}]','[{"text":"on your next swing of this bat.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Cooldown: ","italic":false,"color":"dark_gray"},{"text":"3s","color":"green"}]']}}
execute if entity @s[nbt={SelectedItem:{tag:{hrbat:1}}},scores={hrbatcd=1}] run item replace entity @s weapon.mainhand with wooden_sword{hrbat:1,display:{Name:'[{"text":"Baseball Bat","italic":false}]',Lore:['[{"text":"","italic":false}]','[{"text":"Ability: Home Run","italic":false,"color":"gold"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Gains ","italic":false,"color":"gray"},{"text":"2 ","color":"green"},{"text":"damage and knockback III","color":"gray"}]','[{"text":"on your next swing of this bat.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Cooldown: ","italic":false,"color":"dark_gray"},{"text":"3s","color":"green"}]']}}
execute if entity @s[nbt={SelectedItem:{tag:{hrbat:1}}}] run item modify entity @s weapon.mainhand copyenchants:copybat
execute if entity @s[scores={sharpnesslevel=5}] run enchant @s sharpness 5
execute if entity @s[scores={sharpnesslevel=4}] run enchant @s sharpness 4
execute if entity @s[scores={sharpnesslevel=3}] run enchant @s sharpness 3
execute if entity @s[scores={sharpnesslevel=2}] run enchant @s sharpness 2
execute if entity @s[scores={sharpnesslevel=1}] run enchant @s sharpness 1
execute if entity @s[scores={smitelevel=5}] run enchant @s smite 5
execute if entity @s[scores={smitelevel=4}] run enchant @s smite 4
execute if entity @s[scores={smitelevel=3}] run enchant @s smite 3
execute if entity @s[scores={smitelevel=2}] run enchant @s smite 2
execute if entity @s[scores={smitelevel=1}] run enchant @s smite 1
execute if entity @s[scores={banelevel=5}] run enchant @s bane_of_arthropods 5
execute if entity @s[scores={banelevel=4}] run enchant @s bane_of_arthropods 4
execute if entity @s[scores={banelevel=3}] run enchant @s bane_of_arthropods 3
execute if entity @s[scores={banelevel=2}] run enchant @s bane_of_arthropods 2
execute if entity @s[scores={banelevel=1}] run enchant @s bane_of_arthropods 1
execute if entity @s[scores={unbreakinglevel=3}] run enchant @s unbreaking 3
execute if entity @s[scores={unbreakinglevel=2}] run enchant @s unbreaking 2
execute if entity @s[scores={unbreakinglevel=1}] run enchant @s unbreaking 1
execute if entity @s[scores={lootinglevel=3}] run enchant @s looting 3
execute if entity @s[scores={lootinglevel=2}] run enchant @s looting 2
execute if entity @s[scores={lootinglevel=1}] run enchant @s looting 1
execute if entity @s[scores={sweepinglevel=3}] run enchant @s sweeping 3
execute if entity @s[scores={sweepinglevel=2}] run enchant @s sweeping 2
execute if entity @s[scores={sweepinglevel=1}] run enchant @s sweeping 1
execute if entity @s[scores={kblevel=2}] run enchant @s knockback 2
execute if entity @s[scores={kblevel=1}] run enchant @s knockback 1
execute if entity @s[scores={firelevel=2}] run enchant @s fire_aspect 2
execute if entity @s[scores={firelevel=1}] run enchant @s fire_aspect 1
execute if entity @s[scores={mendinglevel=1}] run enchant @s mending 1
execute if entity @s[scores={vanishinglevel=1}] run enchant @s vanishing_curse 1
