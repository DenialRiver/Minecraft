scoreboard players set @a finalspeed 0
execute as @e[type=!#main:noname,tag=!maxchecked,tag=!tempbat] store result score @s maxmobhealth run attribute @s minecraft:generic.max_health get
execute as @e[type=!#main:noname,tag=!maxchecked,tag=!tempbat] run tag @s add maxchecked
tag @e[tag=valid] remove valid
execute at @a as @e[type=!#main:noname,distance=..10,tag=!tempbat] run tag @s add valid
tag @e[type=ender_dragon] add valid
tag @e[type=wither] add valid
execute as @e[tag=valid] store result score @s prevmobhealth run data get entity @s Health
execute as @e[tag=valid,tag=healthchecked] unless score @s health = @s prevmobhealth run tag @s remove healthchecked
execute as @e[tag=valid] store result score @s health run data get entity @s Health
execute positioned 0 -64 0 as @e[limit=1,sort=nearest,tag=valid,tag=!healthchecked] run function healthcheck:load
execute as @e[tag=valid,tag=healthchecked] run data merge entity @s {CustomNameVisible:1b}
execute as @e[tag=!valid,nbt={CustomNameVisible:1b}] run data modify entity @s CustomNameVisible set value 0b
execute as @a store result score @s maxHealth run attribute @s minecraft:generic.max_health get
execute as @a[scores={actionbartimer=0}] run title @s actionbar [{"score":{"name":"@s","objective":"Health"},"color":"red"},{"text":"/","color":"red"},{"score":{"name":"@s","objective":"maxHealth"},"color":"red"},{"color":"red","text":"❤     "},{"score":{"name":"@s","objective":"Mana"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@s","objective":"maxMana"},"color":"aqua"},{"color":"aqua","text":"✎     "},{"score":{"name":"@s","objective":"Hunger"},"color":"gold"},{"text":"🍖","color":"gold"},{"text":"+","color":"yellow"},{"score":{"name":"@s","objective":"Saturation"},"color":"yellow"}]
execute as @a store result score @s Saturation run data get entity @s foodSaturationLevel
execute as @e[type=villager,tag=!tradeadjusted,nbt={VillagerData:{profession:"minecraft:farmer",level:5}}] if predicate main:20 run data modify entity @s Offers.Recipes append value {maxUses:1,buy:{id:emerald_block,Count:25},buyB:{id:enchanted_golden_apple,Count:1},sell:{id:golden_hoe,Count:1,tag:{display:{Name:'[{"text":"Magical Hoe","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Ability: Replenish","italic":false,"color":"gold"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Replants crops after harvested.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"(Wheat, Carrots, Potatoes,","italic":false,"color":"dark_gray"}]','[{"text":"Beetroots, Nether Wart)","italic":false,"color":"dark_gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Ability: Farm Fresh","italic":false,"color":"gold"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Cannot drop poisonous potatoes.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"When in Main Hand:","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"+10% Movement Speed","italic":false,"color":"white"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"LEGENDARY HOE","italic":false,"color":"gold","bold":true}]']},replenish:1,HideFlags:2}}}
execute as @e[type=wandering_trader,tag=!tradeadjusted] if predicate main:50 run data modify entity @s Offers.Recipes append value {maxUses:3,buy:{id:emerald_block,Count:10},buyB:{id:charcoal,Count:32},sell:{id:stone_axe,Count:1,tag:{display:{Name:'[{"text":"Front Loaded Axe","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Ability: Tree Shred","italic":false,"color":"gold"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Gain increasing levels of haste","italic":false,"color":"gray"}]','[{"text":"every 5 consecutive logs broken.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Haste decreases every 3s","italic":false,"color":"dark_gray"}]','[{"text":"(Max Haste V)","italic":false,"color":"dark_gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"When in Main Hand:","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"+8 Attack Damage","italic":false,"color":"dark_red"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"-3.2 Attack Speed","italic":false,"color":"yellow"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"RARE AXE","italic":false,"color":"dark_aqua","bold":true}]']},HideFlags:2b,replenish:1}}}
execute as @e[type=villager,tag=!tradeadjusted,nbt={VillagerData:{profession:"minecraft:weaponsmith",level:5}}] if predicate main:20 run data modify entity @s Offers.Recipes append value {maxUses:3,buy:{id:emerald_block,Count:32},buyB:{id:black_dye,Count:32,tag:{display:{Name:'[{"text":"Bat Wing","italic":false}]',Lore:['[{"text":"Has an aura of potential. Holds","italic":false,"color":"gray"}]','[{"text":"faint power of an ancient evil.","italic":false,"color":"gray"}]']}}},sell:{id:iron_sword,Count:1,tag:{AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:6,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-122218,10291,22411,-20582]},{AttributeName:"generic.attack_speed",Amount:-2.6,Slot:mainhand,Name:"generic.attack_speed",UUID:[I;-122218,10391,22411,-20782]}],display:{Name:'[{"text":"Count\'s Sword","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Ability: Draining Sustenance","italic":false,"color":"gold"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Every 5 hits dealt grants","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Saturation I (0:01)","italic":false,"color":"blue"},{"text":".","color":"gray"},{"text":"","color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Ability: Bat Dash","italic":false,"color":"gold"},{"text":" ","color":"yellow"},{"text":"SNEAK","color":"yellow","bold":true},{"text":"","color":"dark_purple","bold":false}]','[{"text":"Dash forward 8 blocks, leaving","italic":false,"color":"gray"}]','[{"text":"nothing but a trail of bats.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Cooldown: 5s","italic":false,"color":"dark_gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"When in Main Hand:","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"+6 Attack Damage","italic":false,"color":"dark_red"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"-2.6 Attack Speed","italic":false,"color":"yellow"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"LEGENDARY SWORD","italic":false,"color":"gold","bold":true}]']},HideFlags:2,countsword:1}}}
execute as @e[type=villager,tag=!tradeadjusted,nbt={VillagerData:{profession:"minecraft:cleric",level:2}}] if predicate main:50 run data modify entity @s Offers.Recipes append value {maxUses:3,buy:{id:emerald,Count:10},buyB:{id:ghast_tear,Count:2},sell:{id:warped_fungus_on_a_stick,Count:1,tag:{display:{Name:'[{"text":"Staff of Alleviation","italic":false,"color":"green"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Ability: Fixer-Upper","italic":false,"color":"gold"},{"text":" ","color":"dark_purple"},{"text":"RIGHT CLICK","color":"yellow","bold":true},{"text":"","color":"dark_purple","bold":false}]','[{"text":"Grants ","italic":false,"color":"gray"},{"text":"Regeneration I (0:05)","color":"blue"},{"text":"."},{"text":"","color":"dark_purple"}]','[{"text":"Mana Cost: 5","italic":false,"color":"dark_gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"UNCOMMON WAND","italic":false,"color":"green","bold":true}]']},regenstaff:1}}}
execute as @e[type=wandering_trader,tag=!tradeadjusted] run tag @s add tradeadjusted
execute as @e[type=villager,tag=!tradeadjusted,nbt={VillagerData:{profession:"minecraft:weaponsmith",level:5}}] run tag @s add tradeadjusted
execute as @e[type=villager,tag=!tradeadjusted,nbt={VillagerData:{profession:"minecraft:farmer",level:5}}] run tag @s add tradeadjusted
execute as @e[type=villager,tag=!tradeadjusted,nbt={VillagerData:{profession:"minecraft:cleric",level:2}}] run tag @s add tradeadjusted
execute as @e[type=villager,tag=!professionfound,nbt=!{Xp:0}] run tag @s remove healthcheck
execute as @e[type=villager,tag=!professionfound,nbt=!{Xp:0}] run tag @s add professionfound
execute at @e[type=item,nbt={Item:{tag:{wheatseed:1}}}] run setblock ~ ~ ~ wheat
execute at @e[type=item,nbt={Item:{tag:{carrotseed:1}}}] run setblock ~ ~ ~ carrots
execute at @e[type=item,nbt={Item:{tag:{potatoseed:1}}}] run setblock ~ ~ ~ potatoes
execute at @e[type=item,nbt={Item:{tag:{beetrootseed:1}}}] run setblock ~ ~ ~ beetroots
execute at @e[type=item,nbt={Item:{tag:{wartseed:1}}}] run setblock ~ ~ ~ nether_wart
execute as @e[type=item,nbt={Item:{tag:{seed:1}}}] run kill @s
execute as @e[tag=!silenced,nbt={CustomName:'{"text":"silenced"}'}] run tag @s remove healthchecked
execute as @e[tag=!silenced,nbt={CustomName:'{"text":"silenced"}'}] run data modify entity @s Silent set value 1b
execute as @e[tag=!silenced,nbt={CustomName:'{"text":"silenced"}'}] run tag @s add silenced
execute as @e[tag=silenced,nbt={CustomName:'{"text":"unsilenced"}'}] run tag @s remove healthchecked
execute as @e[tag=silenced,nbt={CustomName:'{"text":"unsilenced"}'}] run data modify entity @s Silent set value 0b
execute as @e[tag=silenced,nbt={CustomName:'{"text":"unsilenced"}'}] run tag @s remove silenced
execute as @e[nbt={HurtTime:5s},tag=!firsthurt] run tag @s add firsthurt
execute as @e[nbt={HurtTime:10s}] run function attributes:load
execute as @e[type=item,nbt={Item:{tag:{xp:10}}}] at @s run summon experience_orb ~ ~ ~ {Value:10}
execute as @e[type=item,nbt={Item:{tag:{xp:10}}}] run kill @s
execute as @e[type=item,nbt={Item:{tag:{xp:100}}}] at @s run summon experience_orb ~ ~ ~ {Value:100}
execute as @e[type=item,nbt={Item:{tag:{xp:100}}}] run kill @s
execute as @e[type=item,nbt={Item:{tag:{xp:1000}}}] at @s run summon experience_orb ~ ~ ~ {Value:1000}
execute as @e[type=item,nbt={Item:{tag:{xp:1000}}}] run kill @s
execute as @e[type=item,nbt={Item:{tag:{xp:10000}}}] at @s run summon experience_orb ~ ~ ~ {Value:10000}
execute as @e[type=item,nbt={Item:{tag:{xp:10000}}}] run kill @s
execute as @a[scores={oakmined=1..},nbt={SelectedItem:{tag:{treeshred:1}}}] run scoreboard players add @s treeshredcount 1
execute as @a[scores={oakmined=1..},nbt={SelectedItem:{tag:{treeshred:1}}}] run scoreboard players set @s treeshredtimer 60
execute as @a[scores={oakmined=1..}] run scoreboard players set @s oakmined 0
execute as @a[scores={birchmined=1..},nbt={SelectedItem:{tag:{treeshred:1}}}] run scoreboard players add @s treeshredcount 1
execute as @a[scores={birchmined=1..},nbt={SelectedItem:{tag:{treeshred:1}}}] run scoreboard players set @s treeshredtimer 60
execute as @a[scores={birchmined=1..}] run scoreboard players set @s birchmined 0
execute as @a[scores={sprucemined=1..},nbt={SelectedItem:{tag:{treeshred:1}}}] run scoreboard players add @s treeshredcount 1
execute as @a[scores={sprucemined=1..},nbt={SelectedItem:{tag:{treeshred:1}}}] run scoreboard players set @s treeshredtimer 60
execute as @a[scores={sprucemined=1..}] run scoreboard players set @s sprucemined 0
execute as @a[scores={darkoakmined=1..},nbt={SelectedItem:{tag:{treeshred:1}}}] run scoreboard players add @s treeshredcount 1
execute as @a[scores={darkoakmined=1..},nbt={SelectedItem:{tag:{treeshred:1}}}] run scoreboard players set @s treeshredtimer 60
execute as @a[scores={darkoakmined=1..}] run scoreboard players set @s darkoakmined 0
execute as @a[scores={acaciamined=1..},nbt={SelectedItem:{tag:{treeshred:1}}}] run scoreboard players add @s treeshredcount 1
execute as @a[scores={acaciamined=1..},nbt={SelectedItem:{tag:{treeshred:1}}}] run scoreboard players set @s treeshredtimer 60
execute as @a[scores={acaciamined=1..}] run scoreboard players set @s acaciamined 0
execute as @a[scores={junglemined=1..},nbt={SelectedItem:{tag:{treeshred:1}}}] run scoreboard players add @s treeshredcount 1
execute as @a[scores={junglemined=1..},nbt={SelectedItem:{tag:{treeshred:1}}}] run scoreboard players set @s treeshredtimer 60
execute as @a[scores={junglemined=1..}] run scoreboard players set @s junglemined 0
execute as @a[scores={crimsonmined=1..},nbt={SelectedItem:{tag:{treeshred:1}}}] run scoreboard players add @s treeshredcount 1
execute as @a[scores={crimsonmined=1..},nbt={SelectedItem:{tag:{treeshred:1}}}] run scoreboard players set @s treeshredtimer 60
execute as @a[scores={crimsonmined=1..}] run scoreboard players set @s crimsonmined 0
execute as @a[scores={warpedmined=1..},nbt={SelectedItem:{tag:{treeshred:1}}}] run scoreboard players add @s treeshredcount 1
execute as @a[scores={warpedmined=1..},nbt={SelectedItem:{tag:{treeshred:1}}}] run scoreboard players set @s treeshredtimer 60
execute as @a[scores={warpedmined=1..}] run scoreboard players set @s warpedmined 0
execute as @a[scores={treeshredcount=5,treeshredlevel=..4}] run scoreboard players add @s treeshredlevel 1
execute as @a[scores={treeshredcount=5,treeshredlevel=..4}] run scoreboard players set @s treeshredcount 0
execute as @a[scores={treeshredtimer=59,treeshredlevel=1}] run effect give @s haste 3 0
execute as @a[scores={treeshredtimer=59,treeshredlevel=2}] run effect give @s haste 3 1
execute as @a[scores={treeshredtimer=59,treeshredlevel=3}] run effect give @s haste 3 2
execute as @a[scores={treeshredtimer=59,treeshredlevel=4}] run effect give @s haste 3 3
execute as @a[scores={treeshredtimer=59,treeshredlevel=5}] run effect give @s haste 3 4
execute as @a[scores={treeshredtimer=1..}] run scoreboard players remove @s treeshredtimer 1
execute as @a[scores={treeshredtimer=0,treeshredlevel=1..}] run scoreboard players set @s treeshredcount 0
execute as @a[scores={treeshredtimer=0,treeshredlevel=1..}] run scoreboard players remove @s treeshredlevel 1
execute as @a[scores={treeshredtimer=0,treeshredlevel=1..}] run scoreboard players set @s treeshredtimer 60
execute as @a[scores={usedwoodensword=1..},nbt={SelectedItem:{tag:{copper:1}}}] run function copyenchants:load
execute as @a[scores={usedwoodensword=1..},nbt={SelectedItem:{tag:{hrbat:1}}}] run function copyenchants:load
execute as @a[scores={hrbatcd=60,usedironsword=1..},nbt={SelectedItem:{tag:{hrbat:1}}}] run scoreboard players set @s hrbatcd 0
execute as @a[scores={hrbatcd=60},nbt={SelectedItem:{id:"minecraft:wooden_sword",tag:{hrbat:1}}}] run function copyenchants:load
scoreboard players add @a[scores={hrbatcd=..59}] hrbatcd 1
execute as @a[scores={hrbatcd=..59},nbt={SelectedItem:{tag:{hrbat:1}}}] run function copyenchants:load
execute as @a[scores={usedwoodensword=1..}] run scoreboard players set @s usedwoodensword 0
execute as @a[scores={usedironsword=1..}] run scoreboard players set @s usedironsword 0
execute as @e[type=drowned,tag=!drownrolled,nbt={HandItems:[{id:"minecraft:trident"}]}] at @s if predicate main:20 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:heart_of_the_sea",Count:1b,tag:{sc:1,scid:1}}}
execute as @e[type=drowned,tag=!drownrolled,nbt=!{HandItems:[{id:"minecraft:trident"}]}] at @s if predicate main:1 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:heart_of_the_sea",Count:1b,tag:{sc:1,scid:2}}}
execute as @e[type=drowned,tag=!drownrolled,nbt=!{HandItems:[{id:"minecraft:trident"}]}] at @s if predicate main:5 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:heart_of_the_sea",Count:1b,tag:{sc:1,scid:3}}}
execute as @e[type=drowned,tag=!drownrolled] run tag @s add drownrolled
execute as @a[scores={clawdmg=1..,clawcount=2},nbt={SelectedItem:{tag:{wolfclaws:1}}}] at @s run playsound minecraft:item.flintandsteel.use ambient @a ~ ~ ~ 10 1.4
execute as @a[scores={clawdmg=1..,clawcount=2},nbt={SelectedItem:{tag:{wolfclaws:1}}}] at @s run summon armor_stand ^ ^2.5 ^3 {Tags:["swipe"],Marker:1b,NoGravity:1b,Invisible:1b}
execute as @e[type=armor_stand,tag=swipe] at @s run tp @s ~ ~ ~ facing entity @p[scores={clawdmg=1..,clawcount=2},nbt={SelectedItem:{tag:{wolfclaws:1}}}]
execute as @a[scores={clawdmg=1..},nbt={SelectedItem:{tag:{wolfclaws:1}}}] run scoreboard players add @s clawcount 1
execute as @a[scores={clawdmg=1..},nbt={SelectedItem:{tag:{wolfclaws:1}}}] run item modify entity @s weapon.mainhand copyenchants:copyclaw
execute as @a[scores={clawdmg=1..}] run scoreboard players set @s clawdmg 0
execute as @a[scores={clawcount=3..},nbt={SelectedItem:{tag:{wolfclaws:1}}}] run scoreboard players set @s clawcount 0
execute as @e[type=armor_stand,tag=swipe] run scoreboard players add @s swipetime 1
execute as @e[type=armor_stand,tag=swipe,scores={swipetime=9}] at @s unless entity @e[tag=valid,limit=1,distance=..3] as @e[type=player,limit=1,sort=nearest,distance=..3] at @s run tp @e[type=armor_stand,tag=swipe,scores={swipetime=9},limit=1,distance=..3] ~ ~1 ~
execute as @e[type=armor_stand,tag=swipe,scores={swipetime=9}] at @s as @e[tag=valid,limit=1,sort=nearest,distance=..3] at @s run tp @e[type=armor_stand,tag=swipe,scores={swipetime=9},limit=1,distance=..3] ~ ~1 ~
execute as @e[type=armor_stand,tag=swipe,scores={swipetime=9}] at @s run tp @s ^2.5 ^ ^
execute as @e[type=armor_stand,tag=swipe,scores={swipetime=9}] at @s run playsound minecraft:entity.iron_golem.attack ambient @a ~ ~ ~ 10 1
execute as @e[type=armor_stand,tag=swipe,scores={swipetime=9}] at @s run playsound minecraft:entity.zombie.break_wooden_door ambient @a ~ ~ ~ 1 1.2
execute as @e[type=armor_stand,tag=swipe,scores={swipetime=9..14}] at @s run particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0 15 force
execute as @e[type=armor_stand,tag=swipe,scores={swipetime=9..14}] at @s run particle minecraft:smoke ^-0.5 ^ ^ 0.1 0.1 0.1 0 15 force
execute as @e[type=armor_stand,tag=swipe,scores={swipetime=9..14}] at @s run tp @s ^-1 ^-0.2 ^
execute as @e[type=armor_stand,tag=swipe,scores={swipetime=9..14}] at @s positioned ~ ~-0.5 ~ run effect give @e[distance=..0.8,type=#main:undead] instant_health 
execute as @e[type=armor_stand,tag=swipe,scores={swipetime=9..14}] at @s positioned ~ ~-0.5 ~ run effect give @e[distance=..0.8,type=!#main:undead] instant_damage
execute as @e[type=armor_stand,tag=swipe,scores={swipetime=14..}] run kill @s
execute as @a[nbt={SelectedItem:{tag:{countsword:1}}},scores={countdmg=1..}] run scoreboard players add @s countcount 1
execute as @a[scores={countdmg=1..}] run scoreboard players set @s countdmg 0
execute as @a[nbt={SelectedItem:{tag:{countsword:1}}},scores={countcount=5..}] run effect give @s saturation 1 0 true
execute as @a[scores={countcount=5..}] run scoreboard players set @s countcount 0
execute as @a unless entity @s[scores={countcd=0..}] run scoreboard players set @s countcd 0
execute as @a[scores={countcd=..99}] run scoreboard players add @s countcd 1
execute as @a[nbt={SelectedItem:{tag:{countsword:1}}},scores={countcd=100},predicate=main:sneaking] at @s if block ^ ^ ^1 #main:nonobstructors positioned ~ ~1 ~ if block ^ ^ ^1 #main:nonobstructors at @s run scoreboard players set @s countcd 200
execute as @a[nbt={SelectedItem:{tag:{countsword:1}}},scores={countcd=100,actionbartimer=0},predicate=main:sneaking] at @s unless block ^ ^ ^1 #main:nonobstructors run title @s actionbar {"text":"There are blocks in the way!","color":"red"}
execute as @a[nbt={SelectedItem:{tag:{countsword:1}}},scores={countcd=100,actionbartimer=0},predicate=main:sneaking] at @s unless block ^ ^ ^1 #main:nonobstructors run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~ 1 0.2
execute as @a[nbt={SelectedItem:{tag:{countsword:1}}},scores={countcd=100,actionbartimer=0},predicate=main:sneaking] at @s unless block ^ ^ ^1 #main:nonobstructors run scoreboard players set @s actionbartimer 10
execute as @a[nbt={SelectedItem:{tag:{countsword:1}}},scores={countcd=100,actionbartimer=0},predicate=main:sneaking] at @s positioned ~ ~1 ~ unless block ^ ^ ^1 #main:nonobstructors at @s run title @s actionbar {"text":"There are blocks in the way!","color":"red"}
execute as @a[nbt={SelectedItem:{tag:{countsword:1}}},scores={countcd=100,actionbartimer=0},predicate=main:sneaking] at @s positioned ~ ~1 ~ unless block ^ ^ ^1 #main:nonobstructors at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~ 1 0.2
execute as @a[nbt={SelectedItem:{tag:{countsword:1}}},scores={countcd=100,actionbartimer=0},predicate=main:sneaking] at @s positioned ~ ~1 ~ unless block ^ ^ ^1 #main:nonobstructors at @s run scoreboard players set @s actionbartimer 10
execute as @a[scores={countcd=101..}] run scoreboard players remove @s countcd 1
execute as @a[scores={countcd=101..}] at @s if block ^ ^ ^1 #main:nonobstructors positioned ~ ~1 ~ if block ^ ^ ^1 #main:nonobstructors at @s run title @s actionbar [{"text":"You used","color":"gold"},{"text":" Bat Dash","color":"yellow","bold":"true"},{"text":"!","color":"gold"}]
execute as @a[scores={countcd=101..}] at @s if block ^ ^ ^1 #main:nonobstructors positioned ~ ~1 ~ if block ^ ^ ^1 #main:nonobstructors at @s run scoreboard players set @s actionbartimer 20
execute as @a[scores={countcd=101..}] at @s if block ^ ^ ^1 #main:nonobstructors positioned ~ ~1 ~ if block ^ ^ ^1 #main:nonobstructors at @s run playsound minecraft:entity.bat.loop ambient @a ~ ~ ~ 4 2
execute as @a[scores={countcd=101..}] at @s if block ^ ^ ^1 #main:nonobstructors positioned ~ ~1 ~ if block ^ ^ ^1 #main:nonobstructors at @s run playsound minecraft:entity.bat.death ambient @s ~ ~ ~ 1 0.8
execute as @a[scores={countcd=101..}] at @s if block ^ ^ ^1 #main:nonobstructors positioned ~ ~1 ~ if block ^ ^ ^1 #main:nonobstructors at @s run summon bat ~ ~1 ~ {Tags:["tempbat"]}
execute as @a[scores={countcd=101..}] at @s if block ^ ^ ^1 #main:nonobstructors positioned ~ ~1 ~ if block ^ ^ ^1 #main:nonobstructors at @s run tp @s ^ ^ ^1
execute as @a[scores={countcd=101..}] at @s if block ^ ^ ^1 #main:nonobstructors positioned ~ ~1 ~ if block ^ ^ ^1 #main:nonobstructors at @s run summon bat ~ ~1 ~ {Tags:["tempbat"]}
execute as @a[scores={countcd=101..}] at @s if block ^ ^ ^1 #main:nonobstructors positioned ~ ~1 ~ if block ^ ^ ^1 #main:nonobstructors at @s run tp @s ^ ^ ^1
execute as @a[scores={countcd=101..}] at @s if block ^ ^ ^1 #main:nonobstructors positioned ~ ~1 ~ if block ^ ^ ^1 #main:nonobstructors at @s run summon bat ~ ~1 ~ {Tags:["tempbat"]}
execute as @a[scores={countcd=101..}] at @s if block ^ ^ ^1 #main:nonobstructors positioned ~ ~1 ~ if block ^ ^ ^1 #main:nonobstructors at @s run tp @s ^ ^ ^1
execute as @a[scores={countcd=101..}] at @s if block ^ ^ ^1 #main:nonobstructors positioned ~ ~1 ~ if block ^ ^ ^1 #main:nonobstructors at @s run summon bat ~ ~1 ~ {Tags:["tempbat"]}
execute as @a[scores={countcd=101..}] at @s if block ^ ^ ^1 #main:nonobstructors positioned ~ ~1 ~ if block ^ ^ ^1 #main:nonobstructors at @s run tp @s ^ ^ ^1
execute as @a[scores={countcd=101..}] at @s if block ^ ^ ^1 #main:nonobstructors positioned ~ ~1 ~ if block ^ ^ ^1 #main:nonobstructors at @s run summon bat ~ ~1 ~ {Tags:["tempbat"]}
execute as @a[scores={countcd=101..}] at @s if block ^ ^ ^1 #main:nonobstructors positioned ~ ~1 ~ if block ^ ^ ^1 #main:nonobstructors at @s run tp @s ^ ^ ^1
execute as @a[scores={countcd=101..}] at @s if block ^ ^ ^1 #main:nonobstructors positioned ~ ~1 ~ if block ^ ^ ^1 #main:nonobstructors at @s run summon bat ~ ~1 ~ {Tags:["tempbat"]}
execute as @a[scores={countcd=101..}] at @s if block ^ ^ ^1 #main:nonobstructors positioned ~ ~1 ~ if block ^ ^ ^1 #main:nonobstructors at @s run tp @s ^ ^ ^1
execute as @a[scores={countcd=101..}] at @s if block ^ ^ ^1 #main:nonobstructors positioned ~ ~1 ~ if block ^ ^ ^1 #main:nonobstructors at @s run summon bat ~ ~1 ~ {Tags:["tempbat"]}
execute as @a[scores={countcd=101..}] at @s if block ^ ^ ^1 #main:nonobstructors positioned ~ ~1 ~ if block ^ ^ ^1 #main:nonobstructors at @s run tp @s ^ ^ ^1
execute as @a[scores={countcd=101..}] at @s if block ^ ^ ^1 #main:nonobstructors positioned ~ ~1 ~ if block ^ ^ ^1 #main:nonobstructors at @s run summon bat ~ ~1 ~ {Tags:["tempbat"]}
execute as @a[scores={countcd=101..}] at @s if block ^ ^ ^1 #main:nonobstructors positioned ~ ~1 ~ if block ^ ^ ^1 #main:nonobstructors at @s run tp @s ^ ^ ^1
execute as @a[scores={countcd=101..}] at @s if block ^ ^ ^1 #main:nonobstructors positioned ~ ~1 ~ if block ^ ^ ^1 #main:nonobstructors at @s run summon bat ~ ~1 ~ {Tags:["tempbat"]}
execute as @a[scores={countcd=101..}] at @s if block ^ ^ ^1 #main:nonobstructors positioned ~ ~1 ~ if block ^ ^ ^1 #main:nonobstructors at @s run tp @s ^ ^ ^1
execute as @a[scores={countcd=199}] run scoreboard players set @s countcd 0
execute as @e[type=bat,tag=tempbat,tag=!tempbat2,scores={countcd=..1}] at @s run particle minecraft:witch ~ ~ ~ 0.2 0.2 0.2 0 20 force
execute as @e[type=bat,tag=tempbat,tag=!tempbat2,scores={countcd=..1}] at @s run summon bat ~ ~ ~ {Tags:["tempbat","tempbat2"]}
execute as @e[type=bat,tag=tempbat] run scoreboard players add @s countcd 1
execute as @e[type=bat,tag=tempbat,scores={countcd=30}] run tp @s 0 -128 0
execute as @a[scores={countcd=99}] at @s run playsound minecraft:entity.bat.takeoff ambient @a ~ ~ ~ 1 1
execute as @a[scores={countcd=99}] at @s run scoreboard players set @s actionbartimer 10
execute as @a[scores={countcd=99}] at @s run title @s actionbar [{"text":"Bat Dash","color":"yellow","bold":"true"},{"text":" is ready!","color":"gold"}]
execute as @a[scores={actionbartimer=1..}] run scoreboard players remove @s actionbartimer 1
scoreboard players set @a maxMana 20
execute as @a run scoreboard players add @s manaRegenTime 1
execute as @a[scores={manaRegenTime=40..}] if score @s Mana < @s maxMana run scoreboard players add @s Mana 1
execute as @a[scores={manaRegenTime=40..}] run scoreboard players set @s manaRegenTime 0
execute as @a if score @s Mana > @s maxMana run scoreboard players operation @s Mana = @s maxMana
execute as @a[scores={usedregenstaff=1..,Mana=..4},nbt={SelectedItem:{tag:{regenstaff:1}}}] at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~ 1 0.1
execute as @a[scores={usedregenstaff=1..,Mana=..4},nbt={SelectedItem:{tag:{regenstaff:1}}}] run title @s actionbar [{"text":"Not enough mana!","color":"red"}]
execute as @a[scores={usedregenstaff=1..,Mana=..4},nbt={SelectedItem:{tag:{regenstaff:1}}}] run scoreboard players set @s actionbartimer 10
execute as @a[scores={usedregenstaff=1..,Mana=5..},nbt={SelectedItem:{tag:{regenstaff:1}}}] run effect give @s regeneration 5 0
execute as @a[scores={usedregenstaff=1..,Mana=5..},nbt={SelectedItem:{tag:{regenstaff:1}}}] run title @s actionbar [{"text":"You used","color":"gold"},{"text":" Fixer-Upper","color":"yellow","bold":"true"},{"text":"!","color":"gold"}]
execute as @a[scores={usedregenstaff=1..,Mana=5..},nbt={SelectedItem:{tag:{regenstaff:1}}}] run scoreboard players set @s actionbartimer 20
execute as @a[scores={usedregenstaff=1..,Mana=5..},nbt={SelectedItem:{tag:{regenstaff:1}}}] run scoreboard players remove @s Mana 5
execute as @a[scores={usedregenstaff=1..}] run scoreboard players set @s usedregenstaff 0
execute as @e[type=zombie,tag=commander] run scoreboard players add @s commanderhealcd 1
execute as @e[type=zombie,tag=commander] at @s if entity @a[distance=..10] run scoreboard players add @s commandersummoncd 1
execute as @e[type=zombie,tag=commander,scores={commanderhealcd=40..}] at @s at @e[type=zombie,distance=0.1..10,sort=nearest,limit=2] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["commanderheal"],Small:1b}
execute as @e[type=armor_stand,tag=commanderheal] at @s run tp @s ^ ^ ^0.2 facing entity @e[limit=1,tag=commander,sort=nearest]
execute as @e[type=armor_stand,tag=commanderheal] unless entity @e[type=zombie,tag=commander] run kill @s
execute as @e[type=armor_stand,tag=commanderheal] at @s if entity @e[type=zombie,tag=commander,distance=..0.2] run effect give @e[type=zombie,tag=commander,sort=nearest,limit=1] instant_damage 1 1
execute as @e[type=armor_stand,tag=commanderheal] at @s if entity @e[type=zombie,tag=commander,distance=..0.2] run playsound minecraft:entity.zombie.infect ambient @a ~ ~ ~ 1 0.8
execute as @e[type=armor_stand,tag=commanderheal] at @s if entity @e[type=zombie,tag=commander,distance=..0.2] run particle minecraft:heart ~ ~2.5 ~ 0.1 0.1 0.1 0 5
execute as @e[type=armor_stand,tag=commanderheal] at @s if entity @e[type=zombie,tag=commander,distance=..0.2] run kill @s
execute as @e[type=armor_stand,tag=commanderheal] at @s run particle minecraft:soul ~ ~1 ~ 0.1 0.1 0.1 0 4
execute as @e[type=armor_stand,tag=commanderheal] at @s run particle minecraft:happy_villager ~ ~1 ~ 0.1 0.1 0.1 0 4
execute as @e[type=zombie,scores={commanderhealcd=40..}] run scoreboard players set @s commanderhealcd 0
execute as @e[type=zombie,scores={commandersummoncd=140..}] at @s run summon armor_stand ~ ~ ~ {Tags:["bossed"],Invisible:1b,Marker:1b}
execute as @e[type=zombie,scores={commandersummoncd=140..}] run scoreboard players set @s commandersummoncd 0
execute as @e[type=armor_stand,tag=bossed] run scoreboard players add @s bossedtimer 1
execute as @e[type=zombie,tag=rising] run scoreboard players add @s bossedtimer 1
execute as @e[type=armor_stand,tag=bossed] at @s run particle minecraft:block dirt ~ ~ ~ 0.2 0 0.2 0.1 10
execute as @e[type=armor_stand,tag=bossed] at @s run playsound minecraft:block.gravel.break ambient @a ~ ~ ~ 0.5 0.1
execute as @e[type=armor_stand,tag=bossed,scores={bossedtimer=40}] at @s run summon zombie ~ ~-2 ~ {NoAI:1b,Invulnerable:1b,Health:30,ArmorItems:[{},{},{},{id:leather_helmet,Count:1}],ArmorDropChances:[0f,0f,0f,0f],Attributes:[{Name:"generic.max_health",Base:30f}],Tags:["summonedzombie","rising"],IsBaby:0}
execute as @e[type=armor_stand,tag=bossed,scores={bossedtimer=50..}] run kill @s
execute as @e[type=zombie,tag=rising] at @s run tp @s ~ ~0.25 ~
execute as @e[type=zombie,tag=rising,scores={bossedtimer=8..}] run data merge entity @s {NoAI:0b,Invulnerable:0b}
execute as @e[type=zombie,tag=rising,scores={bossedtimer=8..}] run tag @s remove rising
execute as @a[nbt={SelectedItem:{tag:{dominion:1}}}] at @s run effect give @e[type=#main:undead,distance=..10] minecraft:weakness 1
execute as @a[nbt={SelectedItem:{tag:{dominion:1}}}] at @s run effect give @e[type=#main:undead,distance=..10] minecraft:slowness 1
execute as @e[type=zombie,scores={maxmobhealth=21..},tag=!commanderrolled,tag=!summonedzombie] if predicate main:20 run data merge entity @s {DrownedConversionTime:-1,Health:100,Tags:[commander],HandItems:[{id:iron_sword,tag:{AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:1,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-122221,18520,182723,-37040]},{AttributeName:"generic.attack_speed",Amount:-1.8,Slot:mainhand,Name:"generic.attack_speed",UUID:[I;-122221,18620,182723,-37240]}],display:{Name:'[{"text":"Undead Slicer","italic":false,"color":"red"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Ability: Undead Dominion","italic":false,"color":"gold"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Applies ","italic":false,"color":"gray"},{"text":"Slowness I (0:01) ","color":"blue"},{"text":"to all"},{"text":"","color":"dark_purple"}]','[{"text":"undead enemies within 6 blocks.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"When in Main Hand:","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"+1 Attack Damage","italic":false,"color":"dark_red"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"-1.8 Attack Speed","italic":false,"color":"yellow"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"SCARCE SWORD","italic":false,"color":"red","bold":true}]']},Enchantments:[{id:smite,lvl:8}],HideFlags:2,dominion:1},Count:1}],HandDropChances:[1.00f],ArmorItems:[{id:iron_boots,Count:1},{id:iron_leggings,Count:1},{id:iron_chestplate,Count:1},{id:diamond_helmet,tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]},Count:1}],ArmorDropChances:[0.00f,0.00f,0.00f,0.00f],Attributes:[{Name:"generic.max_health",Base:100f},{Name:"generic.movement_speed",Base:0.2f},{Name:"generic.attack_damage",Base:5f},{Name:"zombie.spawn_reinforcements",Base:10f}],IsBaby:0}
execute as @e[type=zombie,scores={maxmobhealth=21..},tag=!commanderrolled,tag=!summonedzombie] run tag @s add commanderrolled
execute as @e[type=skeleton,tag=!brigaderolled] if predicate main:1 run tag @s add sergeant
execute as @e[type=skeleton,tag=!brigaderolled,tag=sergeant] run data merge entity @s {ArmorItems:[{id:golden_boots,Count:1},{id:golden_leggings,Count:1},{id:diamond_chestplate,Count:1},{id:iron_helmet,Count:1}],ArmorDropChances:[0f,0f,0f,0f]}
execute as @e[type=skeleton,tag=!brigaderolled,tag=sergeant] at @s run summon skeleton ~ ~ ~ {Tags:["colonel"],ArmorItems:[{id:chainmail_boots,Count:1},{id:chainmail_leggings,Count:1},{id:golden_chestplate,Count:1},{id:golden_helmet,Count:1}],ArmorDropChances:[0f,0f,0f,0f]}
execute as @e[type=skeleton,tag=!brigaderolled,tag=sergeant] at @s run summon skeleton ~ ~ ~ {Tags:["major"],ArmorItems:[{id:diamond_boots,Count:1},{id:iron_leggings,Count:1},{id:iron_chestplate,Count:1},{id:diamond_helmet,Count:1}],ArmorDropChances:[0f,0f,0f,0f]}
execute as @e[type=skeleton,tag=!brigaderolled,tag=sergeant] at @s run summon skeleton ~ ~ ~ {Tags:["captain"],ArmorItems:[{id:iron_boots,Count:1},{id:iron_leggings,Count:1},{id:chainmail_chestplate,Count:1},{id:chainmail_helmet,Count:1}],ArmorDropChances:[0f,0f,0f,0f]}
execute as @e[type=skeleton,tag=!brigaderolled] run tag @s add brigaderolled
execute as @a[nbt={SelectedItem:{tag:{ChargedProjectiles:[{id:"minecraft:spectral_arrow",Count:1b}]}}}] run item modify entity @s weapon.mainhand main: tcb