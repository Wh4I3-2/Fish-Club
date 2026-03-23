scoreboard objectives add game.config dummy

execute unless score .round.length game.config matches -2147483648..2147483647 run scoreboard players set .round.length game.config 200
execute unless score .rounds game.config matches -2147483648..2147483647 run scoreboard players set .rounds game.config 3
execute unless score .fish_cooldown game.config matches -2147483648..2147483647 run scoreboard players set .fish_cooldown game.config 5
execute unless score .teams game.config matches -2147483648..2147483647 run scoreboard players set .teams game.config 12

scoreboard objectives add temp dummy
scoreboard players reset * temp
