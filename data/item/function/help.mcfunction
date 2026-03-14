function item:z_/help/header { title: "" }
tellraw @s "This is a datapack system mainly for creating custom items. Beyond that, it also has some other helpfull functions that you can use."
tellraw @s "I recommend looking at all the different help pages, which there is a helpful navigator bar at the bottom for."
function item:z_/help/footer { current: "Main" }

scoreboard players reset @s help.item.main
