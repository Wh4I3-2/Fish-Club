data modify storage game:round actionbar set value {args:{a:"ʀᴏᴜɴᴅ: ", output:"game:round actionbar.args.a"}}
execute store result storage game:round actionbar.args.b int 1 run scoreboard players get .round game.data
function utils:strings/concat with storage game:round actionbar

data modify storage game:round actionbar.args.b set value "/"
function utils:strings/concat with storage game:round actionbar

execute store result storage game:round actionbar.args.b int 1 run scoreboard players get .rounds game.config
function utils:strings/concat with storage game:round actionbar

data modify storage game:round actionbar.args.b set value " | ᴛɪᴍᴇ ʟᴇꜰᴛ: "
function utils:strings/concat with storage game:round actionbar

data modify storage game:round actionbar.args.b set from storage utils:format/timer output
function utils:strings/concat with storage game:round actionbar

title @s actionbar {nbt:"actionbar.args.a",storage:"game:round",interpret:true}

data remove storage game:round actionbar