execute as @a at @s if score @s picked_up_point matches 1.. run function game:state/round/events/picked_up_point

scoreboard players reset @a picked_up_point