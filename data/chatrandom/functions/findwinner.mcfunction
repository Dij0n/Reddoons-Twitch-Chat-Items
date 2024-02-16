scoreboard players set finder votesRank 0
scoreboard players set second votesRank 0
scoreboard players set third votesRank 0
scoreboard players set fourth votesRank 0
scoreboard players set fifth votesRank 0

function chatrandom:finders/findfirst
function chatrandom:finders/findsecond
function chatrandom:finders/findthird
function chatrandom:finders/findfourth
function chatrandom:finders/findfifth

scoreboard players set finderStorage votesRank 0
scoreboard players set secondStorage votesRank 0
scoreboard players set thirdStorage votesRank 0
scoreboard players set fourthStorage votesRank 0
scoreboard players set fifthStorage votesRank 0

scoreboard players operation finderStorage votesRank = finder votesRank
scoreboard players operation secondStorage votesRank = second votesRank
scoreboard players operation thirdStorage votesRank = third votesRank
scoreboard players operation fourthStorage votesRank = fourth votesRank
scoreboard players operation fifthStorage votesRank = fifth votesRank

scoreboard players operation finder votesRank *= 100 votesRank
scoreboard players operation finder votesRank /= votesAll votesRank
scoreboard players operation second votesRank *= 100 votesRank
scoreboard players operation second votesRank /= votesAll votesRank
scoreboard players operation third votesRank *= 100 votesRank
scoreboard players operation third votesRank /= votesAll votesRank
scoreboard players operation fourth votesRank *= 100 votesRank
scoreboard players operation fourth votesRank /= votesAll votesRank
scoreboard players operation fifth votesRank *= 100 votesRank
scoreboard players operation fifth votesRank /= votesAll votesRank



tellraw @a[tag=chat] ["",{"text":" \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nCurrent Votes:","bold":true,"color":"#00FFFF"},{"text":"\n"},{"text":"---------------","color":"#0073BD"},{"text":"\n"}]

function chatrandom:lines/first
function chatrandom:lines/second
function chatrandom:lines/third
function chatrandom:lines/fourth
function chatrandom:lines/fifth

tellraw @a[tag=chat] ["",{"text":"\n---------------","color":"#0073BD"},{"text":""},{"text":" ","color":"#0073BD"}]