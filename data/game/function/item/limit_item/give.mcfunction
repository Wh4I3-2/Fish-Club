#Args: item: <string>, count: <int>
execute if score item_count temp matches 0.. run return fail
$give @s $(item) $(count)