#Args: UUID: <UUID>
$execute as @e[type=item,nbt={Owner:$(UUID),Item:{components:{"minecraft:custom_data":{owned:true}}}}] run data remove entity @s Owner