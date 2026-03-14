#_ Args = args:{id: string, count: ?int = 1, give: ?bool = false}

data remove storage temp:limit_item_internal_args args 
$data modify storage temp:limit_item_internal_args args set value $(args)
function game:item/limit_item/internal with storage temp:limit_item_internal_args args
execute unless data storage temp:limit_item_internal_args args.count run data modify storage temp:limit_item_internal_args args.count set value 1
execute unless data storage temp:limit_item_internal_args args.give run data modify storage temp:limit_item_internal_args args.give set value false
execute if data storage temp:limit_item_internal_args {args:{give:true}} run function game:item/limit_item/give with storage temp:limit_item_internal_args args
