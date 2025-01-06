execute if score @s warped_fungus_stick_used matches 1.. run scoreboard players operation #cycle_counter counter += 1 const
execute if score @s carrot_used_stick matches 1.. run scoreboard players operation #cycle_counter counter -= 1 const

# Make sure auto cycle is off
execute if score @s warped_fungus_stick_used matches 1.. run schedule clear stats:auto_stats_cycle
execute if score @s carrot_used_stick matches 1.. run schedule clear stats:auto_stats_cycle

# Reset Things on a Stick used
scoreboard players set @s warped_fungus_stick_used 0
scoreboard players set @s carrot_used_stick 0

function stats:cycle_stats