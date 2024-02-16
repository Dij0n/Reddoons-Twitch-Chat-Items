tellraw @a {"text":"Pack is loaded.", "color":"#ff0000"}
tellraw @a ["",{"text":"Plugin by ","italic":true,"color":"gray"},{"text":"@DijonMstrd","italic":true,"underlined":true,"color":"aqua","clickEvent":{"action":"open_url","value":"https://twitter.com/DijonMstrd"}}]

scoreboard objectives add votes dummy
scoreboard objectives add votesRank dummy
scoreboard objectives add votesRandomized dummy

scoreboard objectives add speed trigger
scoreboard objectives add rate trigger
scoreboard objectives add display trigger

scoreboard players set 100 votesRank 100

scoreboard players set $min random 1
scoreboard players set $max random 100

scoreboard objectives add timer dummy

bossbar add nextitem "nextitem"
bossbar set minecraft:nextitem players @a
bossbar set minecraft:nextitem name ["",{"text":" - ","bold":true,"color":"white"},{"text":"Next Item","bold":true,"color":"#FF0000"},{"text":" - ","bold":true,"color":"white"}]
bossbar set minecraft:nextitem color red
bossbar set minecraft:nextitem style notched_6

execute as @a run scoreboard players set @s speed 0
execute as @a run scoreboard players set @s rate 0
execute as @a run scoreboard players set @s display 0
scoreboard players set 20 speed 20