execute store result score .count temp run clear @s emerald[custom_data={points:1}] 0
execute store result score .i temp run data get entity @s Motion[1] 100

data modify storage game:check UUID set from entity @s UUID

execute unless score .i temp matches ..-70 run scoreboard players operation @s fishes = .count temp
execute if score .i temp matches ..-70 if score .count temp > @s fishes run scoreboard players operation @s fishes = .count temp
execute if score .i temp matches ..-70 as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{points:1}}}},distance=..5] run function game:state/round/lock_item with storage game:check
execute unless score .i temp matches ..-70 as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{points:1}}}}] run function game:state/round/unlock_item with storage game:check

data remove storage game:check UUID
