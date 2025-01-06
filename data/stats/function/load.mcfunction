# Entity Matching init
scoreboard objectives add entityid dummy
scoreboard objectives add entityid.0 dummy
scoreboard objectives add entityid.1 dummy
scoreboard objectives add entityid.2 dummy
scoreboard objectives add entityid.3 dummy
scoreboard objectives add entityid.4 dummy
scoreboard objectives add entityid.5 dummy
scoreboard objectives add entityid.6 dummy
scoreboard objectives add entityid.7 dummy
scoreboard objectives add entityid.8 dummy
scoreboard objectives add entityid.9 dummy
scoreboard objectives add entityid.10 dummy
scoreboard objectives add entityid.11 dummy
scoreboard objectives add entityid.12 dummy
scoreboard objectives add entityid.13 dummy
scoreboard objectives add entityid.14 dummy
scoreboard objectives add entityid.15 dummy
scoreboard objectives add entityid.16 dummy
scoreboard objectives add entityid.17 dummy
scoreboard objectives add entityid.18 dummy
scoreboard objectives add entityid.19 dummy
scoreboard objectives add entityid.20 dummy
scoreboard objectives add entityid.21 dummy
scoreboard objectives add entityid.22 dummy
scoreboard objectives add entityid.23 dummy
scoreboard objectives add entityid.24 dummy
scoreboard objectives add entityid.25 dummy
scoreboard objectives add entityid.26 dummy
scoreboard objectives add entityid.27 dummy
scoreboard objectives add entityid.28 dummy
scoreboard objectives add entityid.29 dummy
scoreboard objectives add entityid.30 dummy
scoreboard objectives add entityid.31 dummy
scoreboard players set #loaded entityid 1

#Const Variables
scoreboard objectives add const dummy
scoreboard players set 1 const 1

# Counter variables
scoreboard objectives add counter dummy
scoreboard players set #cycle_counter counter 0

# Stats Cycle Stats
scoreboard objectives add warped_fungus_stick_used minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add carrot_used_stick minecraft.used:minecraft.carrot_on_a_stick

# Stats init
# Main stats to track
scoreboard objectives add player_damage_dealt dummy {"text": "Player Damage", "color": "red"}
scoreboard players set @a player_damage_dealt 0
scoreboard objectives add all_damage_taken minecraft.custom:damage_taken {"text": "Damage Taken", "color": "gray"}
scoreboard objectives add all_damage_absorbed minecraft.custom:damage_absorbed {"text": "Damage Absorbed", "color": "gold"}

scoreboard objectives add old_all_damage_absorbed dummy
execute as @a run scoreboard players operation @s old_all_damage_absorbed = @s all_damage_absorbed
scoreboard objectives add old_all_damage_taken dummy
execute as @a run scoreboard players operation @s old_all_damage_taken = @s all_damage_taken
scoreboard objectives add hit_damage dummy
scoreboard players set @a hit_damage 0
scoreboard objectives add stats_switch dummy
scoreboard players set #global_stats_switch stats_switch 1

# Minecraft Scoreboard Stats
scoreboard objectives add SneakTime minecraft.custom:minecraft.sneak_time {"text": "Sneak Time", "color": "#072130"}
scoreboard objectives add Jumps minecraft.custom:minecraft.jump {"text": "Times Jumped", "color": "green"}

scoreboard objectives add SticksCrafted minecraft.crafted:minecraft.stick {"text": "Sticks Crafted", "color": "#221a06"}

scoreboard objectives add VillagerTrades minecraft.custom:minecraft.traded_with_villager {"text": "Villager Trades", "color": "green"}
scoreboard objectives add AnvilInteractions minecraft.custom:minecraft.interact_with_anvil {"text": "Anvil Interactions", "color": "dark_gray"}
scoreboard objectives add FurnaceUse minecraft.used:minecraft.furnace {"text": "Furnaces Placed", "color": "dark_gray"}
scoreboard objectives add FurnaceInteract minecraft.custom:minecraft.interact_with_furnace {"text": "Furnaces Tickled", "color": "dark_gray"}
scoreboard objectives add CraftingTable minecraft.crafted:minecraft.crafting_table {"text": "Crafting Tables Crafted", "color": "#221a06"}
scoreboard objectives add CraftingTableUse minecraft.used:minecraft.crafting_table {"text": "Crafting Tables Placed", "color": "#221a06"}
scoreboard objectives add CraftingTableInteract minecraft.custom:minecraft.interact_with_crafting_table {"text": "Crafting Table Tickles", "color": "#221a06"}
scoreboard objectives add ETableCount minecraft.custom:minecraft.enchant_item {"text": "Enchanted Item Count", "color": "#8014b3"}

scoreboard objectives add StonePickaxeBroke minecraft.broken:minecraft.stone_pickaxe {"text": "Stone Pickaxes Broken", "color": "dark_gray"}
scoreboard objectives add BowUsed minecraft.used:minecraft.bow {"text": "Arrows Shot", "color": "gray"}
scoreboard objectives add FishFished minecraft.custom:minecraft.fish_caught {"text": "Fish Fished", "color": "blue"}

scoreboard objectives add FlintAndSteel minecraft.used:minecraft.flint_and_steel {"text": "Flint and Steel Used", "color": "#e9810a"}
scoreboard objectives add TorchesPlaced minecraft.used:minecraft.torch {"text": "Torches Placed", "color": "#e9810a"}
scoreboard objectives add LavaBucketsPlaced minecraft.used:minecraft.lava_bucket {"text": "Lava Buckets Placed", "color": "#e9810a"}

scoreboard objectives add MobsKilled minecraft.custom:minecraft.mob_kills {"text": "Mobs Killed", "color": "#041b09"}
scoreboard objectives add ChickensKilled minecraft.killed:minecraft.chicken {"text": "Chlicken Killed", "color": "#ffffff"}

scoreboard objectives add ApplesPickedUp minecraft.picked_up:minecraft.apple {"text": "Apples Picked Up", "color": "red"}
scoreboard objectives add GoldenApplesEaten minecraft.used:minecraft.golden_apple {"text": "Golden Apples Eaten", "color": "gold"}

scoreboard objectives add IronOre minecraft.mined:minecraft.iron_ore {"text": "Iron Ore Mined", "color": "#a58541"}
scoreboard objectives add DIronOre minecraft.mined:minecraft.deepslate_iron_ore {"text": "Deepslate Iron Mined", "color": "#a58541"}
scoreboard objectives add LapisOre minecraft.mined:minecraft.lapis_ore {"text": "Lapis Ore Mined", "color": "blue"}
scoreboard objectives add DLapisOre minecraft.mined:minecraft.deepslate_lapis_ore {"text": "Deepslate Lapis Mined", "color": "blue"}
scoreboard objectives add DiamondOre minecraft.mined:minecraft.diamond_ore {"text": "Diamond Ore Mined", "color": "aqua"}
scoreboard objectives add DDiamondOre minecraft.mined:minecraft.deepslate_diamond_ore {"text": "Deepslate Diamond Mined", "color": "aqua"}
scoreboard objectives add GoldOre minecraft.mined:minecraft.gold_ore {"text": "Gold Ore Mined", "color": "gold"}
scoreboard objectives add DGoldOre minecraft.mined:minecraft.deepslate_gold_ore {"text": "Deepslate Gold Mined", "color": "gold"}
scoreboard objectives add NetherGold minecraft.mined:minecraft.nether_gold_ore {"text": "Nether Gold Mined", "color": "gold"}
scoreboard objectives add StoneMined minecraft.mined:minecraft.stone {"text": "Stone Mined", "color": "dark_gray"}
scoreboard objectives add DeepslateMined minecraft.mined:minecraft.deepslate {"text": "Deepslate Mined", "color": "#0c0c0c"}

function drunk:drunk_load

tellraw @a {"text":"Stats Tracker loaded!","bold":true,"italic":true,"color":"green"}