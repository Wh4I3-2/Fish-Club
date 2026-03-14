function item:z_/help/header { title: "Registry" }
tellraw @s "The registry is where all the custom items is stored. You can look at the data at any time by doing \"data get storage item:registry\""
tellraw @s ["", { text: "Registering an item: ", bold: true }, "To register an item you need to create a function somewhere called \"item.mcfunction\"."]
tellraw @s "Lets say the file is located at \"items:my_item/item.mcfunction\". The contents of the file should look something like:"
tellraw @s { text: "  $$(id) \"items:my_item\"", color: "#b0b0b9" }
tellraw @s { text: "  $$(item) 'iron_ingot[custom_name={text:\"My Item\", italic:false}]'", color: "#b0b0b9" }
tellraw @s "After that you then register it in your load function with a line like:"
tellraw @s { text: "  function item:register {args:{location:\"items:tasty_fish\"}}", color: "#b0b0b9" }
tellraw @s "It's important to note however, that the load function has to be executed after \"item:load\" because it resets the registry."


function item:z_/help/footer { current: "Registry" }

scoreboard players reset @s help.item.registry
