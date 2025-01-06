execute as @a[tag=!entityidset] run function entity_hit_matching:assign_id
execute as @a if entity @s[advancements={entity_hit_matching:player_damaged=true}] run function entity_hit_matching:player_damaged

execute as @a[scores={drunk_trigger=1}] run function drunk:toggle_drunk_player
execute as @a[scores={change_threshold=1}] run function drunk:increase_drunk_threshold

execute as @a[gamemode=creative] run function stats:manual_stats_cycle
