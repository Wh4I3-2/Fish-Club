#_ Args = id: string, count: int

execute if score item_count temp matches 0.. run return fail
$function item:give {args:{id:"$(id)",count:$(count)}}
