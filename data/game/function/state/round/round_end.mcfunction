tag @a remove checked

scoreboard players set .highest_points temp 0
function game:state/round/round_winner

tag @a remove checked

execute as @a if score @s points >= .highest_points temp run say Won the round
execute as @a if score @s points >= .highest_points temp run scoreboard players add @s wins 1

scoreboard players reset * points

gamerule showDeathMessages false
kill @a[gamemode=adventure]
kill @a[gamemode=survival]
scoreboard players reset * points
scoreboard players set @a[gamemode=adventure] points 0
scoreboard players set @a[gamemode=survival] points 0
gamerule showDeathMessages true

title @a[gamemode=adventure] title "Round Ended"
title @a[gamemode=survival] title "Round Ended"