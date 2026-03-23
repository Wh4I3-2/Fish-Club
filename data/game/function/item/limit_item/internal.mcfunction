#_ Args = id: string, count: int

$execute store result score item_count temp run function item:count {args:{id:"$(id)"}}
$scoreboard players remove item_count temp $(count)
$data modify storage temp:clear_args args.id set value '$(id)'

execute store result storage temp:clear_args args.count int 1 run scoreboard players get item_count temp
execute if score item_count temp matches 1.. run function item:clear with storage temp:clear_args

data remove storage temp:clear_args args
