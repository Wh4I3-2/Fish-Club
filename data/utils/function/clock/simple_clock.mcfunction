### Args: objective: <string>, target: <string>, length: <int>

$scoreboard objectives add $(objective) dummy
$scoreboard players add $(target) $(objective) 1
$execute if score $(target) $(objective) matches $(length).. run scoreboard players set $(target) $(objective) 0