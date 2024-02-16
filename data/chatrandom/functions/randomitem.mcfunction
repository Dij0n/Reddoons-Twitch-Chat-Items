function chatrandom:findwinner



scoreboard players set finderRandom votesRandomized 0
scoreboard players set secondRandom votesRandomized 0
scoreboard players set thirdRandom votesRandomized 0
scoreboard players set fourthRandom votesRandomized 0
scoreboard players set fifthRandom votesRandomized 0
scoreboard players set result votesRandomized 0
scoreboard players set finalItem votesRandomized 0

scoreboard players operation finderRandom votesRandomized = finder votesRank
scoreboard players operation secondRandom votesRandomized = second votesRank
scoreboard players operation thirdRandom votesRandomized = third votesRank
scoreboard players operation fourthRandom votesRandomized = fourth votesRank
scoreboard players operation fifthRandom votesRandomized = fifth votesRank

scoreboard players operation secondRandom votesRandomized += finderRandom votesRandomized
scoreboard players operation thirdRandom votesRandomized += secondRandom votesRandomized
scoreboard players operation fourthRandom votesRandomized += thirdRandom votesRandomized
scoreboard players operation fifthRandom votesRandomized += fourthRandom votesRandomized

scoreboard players set $min random 0
scoreboard players operation $max random = fifthRandom votesRandomized

function random:uniform
scoreboard players operation result votesRandomized = $out random


execute if score result votesRandomized <= finderRandom votesRandomized run scoreboard players operation finalItem votesRandomized = finderStorage votesRank
execute if score result votesRandomized <= secondRandom votesRandomized run execute if score result votesRandomized >= finderRandom votesRandomized run scoreboard players operation finalItem votesRandomized = secondStorage votesRank
execute if score result votesRandomized <= thirdRandom votesRandomized run execute if score result votesRandomized >= secondRandom votesRandomized run scoreboard players operation finalItem votesRandomized = thirdStorage votesRank
execute if score result votesRandomized <= fourthRandom votesRandomized run execute if score result votesRandomized >= thirdRandom votesRandomized run scoreboard players operation finalItem votesRandomized = fourthStorage votesRank
execute if score result votesRandomized <= fifthRandom votesRandomized run execute if score result votesRandomized >= fourthRandom votesRandomized run scoreboard players operation finalItem votesRandomized = fifthStorage votesRank

scoreboard players set give ItemTimer 1
scoreboard players set chatVoteCounter ItemTimer 0

function chatrandom:giveitem

execute unless score chatVoteRate ItemTimer matches 1 run function chatrandom:bossswitchback
execute if score chatVoteRate ItemTimer matches 1 run function chatrandom:bossswitch

function chatrandom:resetvotes