#_ Args = i: int
$data modify storage game:teams check.id set from storage game:teams order[$(i)]
execute store result score .member_count temp run function game:teams/join/member_count with storage game:teams check

execute if score .member_count temp matches ..0 run data modify storage game:teams found set from storage game:teams check
execute if score .member_count temp <= .min temp run data modify storage game:teams found set from storage game:teams check
execute if score .member_count temp <= .min temp run scoreboard players operation .min temp = .member_count temp

$scoreboard players set .i temp $(i)
scoreboard players remove .i temp 1
execute store result storage game:teams find.i int 1 run scoreboard players get .i temp
execute unless score .i temp matches ..-1 run function game:teams/join/find with storage game:teams find
