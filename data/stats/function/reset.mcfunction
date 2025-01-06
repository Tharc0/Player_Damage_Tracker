scoreboard players set @a player_damage_dealt 0
execute as @a run scoreboard players operation @s old_all_damage_taken = @s all_damage_taken
execute as @a run scoreboard players operation @s old_all_damage_absorbed = @s all_damage_absorbed
scoreboard players set @a hit_damage 0
tellraw @s {"text":"Stats Tracker reset!","bold":true,"italic":true,"color":"gold"}