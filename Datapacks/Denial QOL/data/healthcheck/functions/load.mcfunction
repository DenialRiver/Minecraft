setblock 0 -64 0 oak_sign
data modify entity @s CustomName set value ""
data modify entity @s[tag=silenced] CustomName set value '{"text":"Silenced","color":"red"}'
data modify entity @s[tag=sc1] CustomName set value '{"text":"Striker Drowned","color":"dark_aqua"}'
data modify entity @s[tag=sc2] CustomName set value '{"text":"Resilient Drowned","color":"gray"}'
data modify entity @s[tag=sc3] CustomName set value '{"text":"Experienced Drowned","color":"gold"}'
data modify entity @s[type=guardian] CustomName set value '{"text":"Guardian","color":"dark_aqua"}'
data modify entity @s[tag=commander] CustomName set value '{"text":"Zombie Commander","color":"dark_green"}'
data modify entity @s[tag=summonedzombie] CustomName set value '{"text":"Zombie Serf","color":"green"}'
data modify entity @s[tag=sergeant] CustomName set value '{"text":"Sergeant Sharpshooter","color":"gold"}'
data modify entity @s[tag=colonel] CustomName set value '{"text":"Colonel Cutlass","color":"gold"}'
data modify entity @s[tag=captain] CustomName set value '{"text":"Captain Chopper","color":"gold"}'
data modify entity @s[tag=major] CustomName set value '{"text":"Major Marrow","color":"gold"}'
data modify block 0 -64 0 Text1 set value "[\"\",{\"selector\":\"@e[limit=1,sort=nearest,tag=valid,tag=!healthchecked]\"},\" \",{\"score\":{\"name\":\"@e[limit=1,sort=nearest,tag=valid,tag=!healthchecked]\",\"objective\":\"health\"},\"color\":\"green\"},{\"text\":\"/\",\"color\":\"white\"},{\"score\":{\"name\":\"@e[limit=1,sort=nearest,tag=valid,tag=!healthchecked]\",\"objective\":\"maxmobhealth\"},\"color\":\"green\"}]"
data modify entity @s CustomName set from block 0 -64 0 Text1
tag @s add healthchecked
setblock 0 -64 0 bedrock