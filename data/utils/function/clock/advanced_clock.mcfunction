### Params: objective: <string>, target: <string>, tickLength: <int>, length: <int>

$scoreboard objectives add $(objective) dummy
$scoreboard objectives add $(objective).tick dummy
$scoreboard players add $(target) $(objective).tick 1
$execute if score $(target) $(objective).tick matches $(tickLength).. run scoreboard players add $(target) $(objective) 1
$execute if score $(target) $(objective).tick matches $(tickLength).. run scoreboard players set $(target) $(objective).tick 0

$execute if score $(target) $(objective) matches $(length).. run scoreboard players set $(target) $(objective) 0
