#Args: item: <string>, count: <int>
$execute store result score item_count temp run clear @s $(item) 0
$scoreboard players remove item_count temp $(count)
$data modify storage temp:clear_args item set value '$(item)'
execute store result storage temp:clear_args count int 1 run scoreboard players get item_count temp
execute if score item_count temp matches 1.. run function utils:item/clear with storage temp:clear_args