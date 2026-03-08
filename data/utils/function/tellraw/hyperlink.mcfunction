#Args: args:{url: <string>, message: <string> = url, hover_message: str = url, target: <Entity> = @s}
data remove storage utils:tellraw hyperlink
$data modify storage utils:tellraw hyperlink set value $(args)
execute unless data storage utils:tellraw hyperlink.message run data modify storage utils:tellraw hyperlink.message set from storage utils:tellraw hyperlink.url
execute unless data storage utils:tellraw hyperlink.hover_message run data modify storage utils:tellraw hyperlink.hover_message set from storage utils:tellraw hyperlink.url
execute unless data storage utils:tellraw hyperlink.target run data modify storage utils:tellraw hyperlink.target set value "@s"
function utils:tellraw/hyperlink/internal with storage utils:tellraw hyperlink