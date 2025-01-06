# Add damage to drink_threshold
scoreboard players operation @s player_drink_hit += @s hit_damage
scoreboard players operation @s player_drink_score = @s player_drink_hit
scoreboard players operation @s player_drink_score /= @s drink_threshold
execute if score @s player_drink_score matches 1.. run function drunk:player_drink_up