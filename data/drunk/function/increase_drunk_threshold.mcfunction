scoreboard players enable @s change_threshold
scoreboard players set @s change_threshold 0
scoreboard players add @s drink_threshold 20
execute if score @s drink_threshold > #max_threshold drink_threshold run scoreboard players set @s drink_threshold 20
scoreboard players operation #temp drink_threshold = @s drink_threshold
scoreboard players operation #temp drink_threshold /= 20 const
tellraw @s ["",{"text":"Current Threshold: ","color":"dark_green", "clickEvent":{"action":"run_command","value":"/function drunk:increase_drunk_threshold"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to change threshold","color":"dark_gray"}]}},{"score":{"name":"#temp","objective":"drink_threshold"},"color":"gold","clickEvent":{"action":"run_command","value":"/function drunk:increase_drunk_threshold"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to change threshold","color":"dark_gray"}]}}]