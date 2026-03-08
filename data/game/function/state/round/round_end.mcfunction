tag @a remove checked

scoreboard players set .highest_kills temp 0
function game:state/round/round_winner

tag @a remove checked

execute as @a if score @s kills >= .highest_kills temp run say Won the round
execute as @a if score @s kills >= .highest_kills temp run scoreboard players add @s wins 1

gamerule showDeathMessages false
kill @a[gamemode=adventure]
kill @a[gamemode=survival]
scoreboard players reset * kills
gamerule showDeathMessages true

title @a title "Round Ended"