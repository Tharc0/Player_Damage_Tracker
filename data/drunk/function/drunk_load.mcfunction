# Drunk init
scoreboard objectives add drunk_trigger trigger
scoreboard players enable @a drunk_trigger
scoreboard players set @a drunk_trigger 0
scoreboard objectives add drunk_switch dummy
scoreboard players set @a drunk_switch 1
scoreboard players set #global_drunk drunk_switch 1
scoreboard objectives add drinks dummy
scoreboard players set @a drinks 0

# Set threshold to 40 damage = 2 hearts
scoreboard objectives add drink_threshold dummy
scoreboard players set @a drink_threshold 40

# Trigger for the normal player to change the threshold
scoreboard objectives add change_threshold trigger
scoreboard objectives modify drink_threshold rendertype hearts
scoreboard players enable @a change_threshold
scoreboard players set @a change_threshold 0

# Maximum threshold
scoreboard players set #max_threshold drink_threshold 100

# const value
scoreboard players set 20 const 20

scoreboard objectives add player_drink_hit dummy
scoreboard players set @a player_drink_hit 0
scoreboard objectives add player_drink_score dummy
scoreboard players set @a player_drink_score 0

tellraw @a {"text":"Drunk Tracker is now enabled!","bold":true,"italic":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function drunk:toggle_drunk"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to toggle drunk tracker","color":"gray"}]}}