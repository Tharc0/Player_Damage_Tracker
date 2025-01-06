# Add amount of drinks to drinks scoreboard of the player
scoreboard players operation @s drinks += @s player_drink_score

# Display a message to the player to take x amount of drinks
# Distinguish between singular and plural
execute if score @s player_drink_score matches 1 run tellraw @s {"text":"Time to take a sip!","bold":true,"color":"blue"}
execute if score @s player_drink_score matches 2.. run tellraw @s ["",{"text":"Seems like you took a hit! Take ","bold":true,"color":"blue"},{"score":{"name":"@s","objective":"player_drink_score"},"bold":true,"color":"gray"},{"text":" shots!","bold":true,"color":"blue"}]

# Reset drink score and adjust drink hit
scoreboard players operation @s player_drink_score *= @s drink_threshold
scoreboard players operation @s player_drink_hit -= @s player_drink_score
scoreboard players set @s player_drink_score 0