scoreboard players enable @a speed
scoreboard players enable @a rate
scoreboard players enable @a display

execute as @a run execute unless score @s speed matches 0 run scoreboard players operation @s speed *= 20 speed
execute as @a run execute unless score @s speed matches 0 run scoreboard players operation RandomItemGiver ItemTimer = @s speed
execute as @a run execute unless score @s speed matches 0 run scoreboard players set @s speed 0

execute as @a run execute unless score @s rate matches 0 run scoreboard players operation chatVoteRate ItemTimer = @s rate
execute as @a run execute unless score @s rate matches 0 run function chatrandom:bossswitchback
execute as @a run execute unless score @s rate matches 0 run scoreboard players set @s rate 0

execute as @a run execute unless score @s display matches 0 run execute if entity @s[tag=chat] run tag @s add removal
execute as @a run execute unless score @s display matches 0 run execute if entity @s[tag=chat] run tag @s remove chat
execute as @a run execute unless score @s display matches 0 run execute if entity @s[tag=!chat, tag=!removal] run tag @s add chat
execute as @a run execute unless score @s display matches 0 run execute if entity @s run tag @s remove removal
execute as @a run execute unless score @s display matches 0 run scoreboard players set @s display 0

scoreboard players add chatUpdate timer 1

execute if score chatUpdate timer matches 35 run function chatrandom:findwinner
execute if score chatUpdate timer matches 35 run scoreboard players reset chatUpdate timer

execute store result bossbar minecraft:nextitem value run scoreboard players get give ItemTimer
execute store result bossbar minecraft:nextitem max run scoreboard players get RandomItemGiver ItemTimer