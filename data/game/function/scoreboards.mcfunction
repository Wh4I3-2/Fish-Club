scoreboard objectives add game.config dummy
scoreboard players reset * game.config

scoreboard players set .point_cooldown game.config 40
scoreboard players set .round.length game.config 2400
scoreboard players set .rounds game.config 3

scoreboard objectives add temp dummy
scoreboard players reset * temp
