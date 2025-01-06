scoreboard players enable @s drunk_trigger
scoreboard players set @s drunk_trigger 0
scoreboard players add @s drunk_switch 1
execute if score @s drunk_switch matches 2 run scoreboard players set @s drunk_switch 0
execute if score @s drunk_switch matches 0 run tellraw @s {"text":"Drunk Tracker is disabled!","bold":true,"italic":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/function drunk:toggle_drunk_player"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to toggle drunk tracker","color":"gray"}]}}
execute if score @s drunk_switch matches 1 run tellraw @s {"text":"Drunk Tracker is enabled!","bold":true,"italic":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function drunk:toggle_drunk_player"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to toggle drunk tracker","color":"gray"}]}}