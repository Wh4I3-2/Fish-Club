tag @a remove checked

scoreboard players set .highest_wins temp 0
function game:state/round/game_winner

tag @a remove checked

execute as @a if score @s wins >= .highest_wins temp run say Won the game
execute as @a if score @s wins >= .highest_wins temp run scoreboard players add @s game_wins 1

scoreboard players reset * kills
scoreboard players reset * wins
scoreboard players set .round game.data 0