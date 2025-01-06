advancement revoke @s only entity_hit_matching:player_damaged

# Calculate Hit Damage
scoreboard players operation @s hit_damage = @s all_damage_taken
scoreboard players operation @s hit_damage -= @s old_all_damage_taken
scoreboard players operation @s hit_damage -= @s old_all_damage_absorbed
scoreboard players operation @s hit_damage += @s all_damage_absorbed

# Check if damage came from a player and global stats is true
execute if entity @s[advancements={entity_hit_matching:on_hurt={target=true}}] run execute if score #global_stats_switch stats_switch matches 1 run function entity_hit_matching:player_hurt_player

# Check if global drunk is true and player drunk is true
execute if score #global_drunk drunk_switch matches 1 run execute if score @s drunk_switch matches 1 run function drunk:player_drink_hit

# Always reset damage taken
scoreboard players operation @s old_all_damage_absorbed = @s all_damage_absorbed
scoreboard players operation @s old_all_damage_taken = @s all_damage_taken