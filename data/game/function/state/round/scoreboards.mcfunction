scoreboard objectives add game.data dummy
scoreboard players reset * game.data

scoreboard players set .round game.data 1
scoreboard players operation .time_left game.data = .round.length game.config

scoreboard objectives add kills playerKillCount
scoreboard objectives add wins dummy
scoreboard objectives modify wins displayname "Rounds :>"
scoreboard objectives add game_wins dummy
scoreboard objectives modify game_wins displayname "Wins :O"

scoreboard objectives setdisplay below_name wins
scoreboard objectives setdisplay list game_wins

scoreboard objectives add point_timer dummy
scoreboard players reset * point_timer

scoreboard objectives add points dummy
scoreboard objectives add picked_up_point minecraft.picked_up:minecraft.emerald