# Desc: 
#
# Called by: #minecraft:load

## Create Config
scoreboard objectives add afksmart.config dummy
scoreboard objectives add afksmart.tmp.config dummy
execute unless score #enabled afksmart.config matches 0..1 run scoreboard players set #enabled afksmart.config 1
execute unless score #timeToAFKInTicks afksmart.config matches 20..1728000 run scoreboard players set #timeToAFKInTicks afksmart.config 1200
execute unless score #timeToAFKInSeconds afksmart.config matches 1..86400 run scoreboard players set #timeToAFKInSeconds afksmart.config 60
execute unless score #timeToAFKInMinutes afksmart.config matches 1..1440 run scoreboard players set #timeToAFKInMinutes afksmart.config 1
execute unless score #hookEnabled:PlayerTeams afksmart.config matches 0..1 run scoreboard players set #hookEnabled:PlayerTeams afksmart.config 0
execute unless score #teamIsFound afksmart.config matches 0..1 run scoreboard players set #teamIsFound afksmart.config 0

## Create Scoreboard Objectives
scoreboard objectives add afksmart.timer dummy
scoreboard players set @a afksmart.timer 0

# Stats to track while player is active (NOT AFK)
scoreboard objectives add afksmart.stat.whileActive.aviate minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add afksmart.stat.whileActive.breed minecraft.custom:minecraft.animals_bred
scoreboard objectives add afksmart.stat.whileActive.cauldronFill minecraft.custom:minecraft.fill_cauldron
scoreboard objectives add afksmart.stat.whileActive.cauldronUse minecraft.custom:minecraft.use_cauldron
scoreboard objectives add afksmart.stat.whileActive.climb minecraft.custom:minecraft.climb_one_cm
scoreboard objectives add afksmart.stat.whileActive.crouch minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add afksmart.stat.whileActive.crouchTime minecraft.custom:minecraft.sneak_time
scoreboard objectives add afksmart.stat.whileActive.eatCake minecraft.custom:minecraft.eat_cake_slice
scoreboard objectives add afksmart.stat.whileActive.enchant minecraft.custom:minecraft.enchant_item
scoreboard objectives add afksmart.stat.whileActive.drop minecraft.custom:minecraft.drop
scoreboard objectives add afksmart.stat.whileActive.fall minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add afksmart.stat.whileActive.fish minecraft.custom:minecraft.fish_caught
scoreboard objectives add afksmart.stat.whileActive.fly minecraft.custom:minecraft.fly_one_cm
scoreboard objectives add afksmart.stat.whileActive.jump minecraft.custom:minecraft.jump
scoreboard objectives add afksmart.stat.whileActive.mobKills minecraft.custom:minecraft.mob_kills
scoreboard objectives add afksmart.stat.whileActive.plantsPotted minecraft.custom:minecraft.pot_flower
scoreboard objectives add afksmart.stat.whileActive.playerKills minecraft.custom:minecraft.player_kills
scoreboard objectives add afksmart.stat.whileActive.ring minecraft.custom:minecraft.bell_ring
scoreboard objectives add afksmart.stat.whileActive.sleep minecraft.custom:minecraft.sleep_in_bed
scoreboard objectives add afksmart.stat.whileActive.sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add afksmart.stat.whileActive.swim minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add afksmart.stat.whileActive.talkToVillager minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add afksmart.stat.whileActive.targetHit minecraft.custom:minecraft.target_hit
scoreboard objectives add afksmart.stat.whileActive.tune minecraft.custom:minecraft.tune_noteblock
scoreboard objectives add afksmart.stat.whileActive.tradeWithVillager minecraft.custom:minecraft.traded_with_villager
scoreboard objectives add afksmart.stat.whileActive.walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add afksmart.stat.whileActive.walkOnWater minecraft.custom:minecraft.walk_on_water_one_cm
scoreboard objectives add afksmart.stat.whileActive.walkUnderWater minecraft.custom:minecraft.walk_under_water_one_cm
# Similar are Grouped
scoreboard objectives add afksmart.stat.whileActive.cleanArmor minecraft.custom:minecraft.clean_armor
scoreboard objectives add afksmart.stat.whileActive.cleanBanner minecraft.custom:minecraft.clean_banner
scoreboard objectives add afksmart.stat.whileActive.cleanShulker minecraft.custom:minecraft.clean_shulker_box
scoreboard objectives add afksmart.stat.whileActive.damageBlocked minecraft.custom:minecraft.damage_blocked_by_shield
scoreboard objectives add afksmart.stat.whileActive.damageDealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add afksmart.stat.whileActive.inspectDispenser minecraft.custom:minecraft.inspect_dispenser
scoreboard objectives add afksmart.stat.whileActive.inspectDropper minecraft.custom:minecraft.inspect_dropper
scoreboard objectives add afksmart.stat.whileActive.inspectHopper minecraft.custom:minecraft.inspect_hopper
scoreboard objectives add afksmart.stat.whileActive.interactAnvil minecraft.custom:minecraft.interact_with_anvil
scoreboard objectives add afksmart.stat.whileActive.interactBeacon minecraft.custom:minecraft.interact_with_beacon
scoreboard objectives add afksmart.stat.whileActive.interactBlastFurnace minecraft.custom:minecraft.interact_with_blast_furnace
scoreboard objectives add afksmart.stat.whileActive.interactBrewingstand minecraft.custom:minecraft.interact_with_brewingstand
scoreboard objectives add afksmart.stat.whileActive.interactCampfire minecraft.custom:minecraft.interact_with_campfire
scoreboard objectives add afksmart.stat.whileActive.interactCartographyTable minecraft.custom:minecraft.interact_with_cartography_table
scoreboard objectives add afksmart.stat.whileActive.interactCraftingTable minecraft.custom:minecraft.interact_with_crafting_table
scoreboard objectives add afksmart.stat.whileActive.interactFurnace minecraft.custom:minecraft.interact_with_furnace
scoreboard objectives add afksmart.stat.whileActive.interactGrindstone minecraft.custom:minecraft.interact_with_grindstone
scoreboard objectives add afksmart.stat.whileActive.interactLectern minecraft.custom:minecraft.interact_with_lectern
scoreboard objectives add afksmart.stat.whileActive.interactLoom minecraft.custom:minecraft.interact_with_loom
scoreboard objectives add afksmart.stat.whileActive.interactSmithingTable minecraft.custom:minecraft.interact_with_smithing_table
scoreboard objectives add afksmart.stat.whileActive.interactSmoker minecraft.custom:minecraft.interact_with_smoker
scoreboard objectives add afksmart.stat.whileActive.interactStonecutter minecraft.custom:minecraft.interact_with_stonecutter
scoreboard objectives add afksmart.stat.whileActive.openBarrel minecraft.custom:minecraft.open_barrel
scoreboard objectives add afksmart.stat.whileActive.openChest minecraft.custom:minecraft.open_chest
scoreboard objectives add afksmart.stat.whileActive.openEnderchest minecraft.custom:minecraft.open_enderchest
scoreboard objectives add afksmart.stat.whileActive.openShulker minecraft.custom:minecraft.open_shulker_box
scoreboard objectives add afksmart.stat.whileActive.openTrappedChest minecraft.custom:minecraft.trigger_trapped_chest
scoreboard objectives add afksmart.stat.whileActive.playNoteblock minecraft.custom:minecraft.play_noteblock
scoreboard objectives add afksmart.stat.whileActive.playRecord minecraft.custom:minecraft.play_record
scoreboard objectives add afksmart.stat.whileActive.raidTrigger minecraft.custom:minecraft.raid_trigger
scoreboard objectives add afksmart.stat.whileActive.raidWin minecraft.custom:minecraft.raid_win
scoreboard objectives add afksmart.stat.whileActive.rideBoat minecraft.custom:minecraft.boat_one_cm
scoreboard objectives add afksmart.stat.whileActive.rideHorse minecraft.custom:minecraft.horse_one_cm
scoreboard objectives add afksmart.stat.whileActive.rideMinecart minecraft.custom:minecraft.minecart_one_cm
scoreboard objectives add afksmart.stat.whileActive.ridePig minecraft.custom:minecraft.pig_one_cm
scoreboard objectives add afksmart.stat.whileActive.rideStrider minecraft.custom:minecraft.strider_one_cm

# Stats to track while AFK
scoreboard objectives add afksmart.stat.whileAFK.aviate minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add afksmart.stat.whileAFK.breed minecraft.custom:minecraft.animals_bred
scoreboard objectives add afksmart.stat.whileAFK.cauldronFill minecraft.custom:minecraft.fill_cauldron
scoreboard objectives add afksmart.stat.whileAFK.cauldronUse minecraft.custom:minecraft.use_cauldron
scoreboard objectives add afksmart.stat.whileAFK.climb minecraft.custom:minecraft.climb_one_cm
scoreboard objectives add afksmart.stat.whileAFK.crouch minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add afksmart.stat.whileAFK.crouchTime minecraft.custom:minecraft.sneak_time
scoreboard objectives add afksmart.stat.whileAFK.eatCake minecraft.custom:minecraft.eat_cake_slice
scoreboard objectives add afksmart.stat.whileAFK.enchant minecraft.custom:minecraft.enchant_item
scoreboard objectives add afksmart.stat.whileAFK.drop minecraft.custom:minecraft.drop
scoreboard objectives add afksmart.stat.whileAFK.fall minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add afksmart.stat.whileAFK.fish minecraft.custom:minecraft.fish_caught
scoreboard objectives add afksmart.stat.whileAFK.fly minecraft.custom:minecraft.fly_one_cm
scoreboard objectives add afksmart.stat.whileAFK.jump minecraft.custom:minecraft.jump
scoreboard objectives add afksmart.stat.whileAFK.mobKills minecraft.custom:minecraft.mob_kills
scoreboard objectives add afksmart.stat.whileAFK.plantsPotted minecraft.custom:minecraft.pot_flower
scoreboard objectives add afksmart.stat.whileAFK.playerKills minecraft.custom:minecraft.player_kills
scoreboard objectives add afksmart.stat.whileAFK.ring minecraft.custom:minecraft.bell_ring
scoreboard objectives add afksmart.stat.whileAFK.sleep minecraft.custom:minecraft.sleep_in_bed
scoreboard objectives add afksmart.stat.whileAFK.sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add afksmart.stat.whileAFK.swim minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add afksmart.stat.whileAFK.talkToVillager minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add afksmart.stat.whileAFK.targetHit minecraft.custom:minecraft.target_hit
scoreboard objectives add afksmart.stat.whileAFK.tune minecraft.custom:minecraft.tune_noteblock
scoreboard objectives add afksmart.stat.whileAFK.tradeWithVillager minecraft.custom:minecraft.traded_with_villager
scoreboard objectives add afksmart.stat.whileAFK.walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add afksmart.stat.whileAFK.walkOnWater minecraft.custom:minecraft.walk_on_water_one_cm
scoreboard objectives add afksmart.stat.whileAFK.walkUnderWater minecraft.custom:minecraft.walk_under_water_one_cm
# Similar are Grouped
scoreboard objectives add afksmart.stat.whileAFK.cleanArmor minecraft.custom:minecraft.clean_armor
scoreboard objectives add afksmart.stat.whileAFK.cleanBanner minecraft.custom:minecraft.clean_banner
scoreboard objectives add afksmart.stat.whileAFK.cleanShulker minecraft.custom:minecraft.clean_shulker_box
scoreboard objectives add afksmart.stat.whileAFK.damageBlocked minecraft.custom:minecraft.damage_blocked_by_shield
scoreboard objectives add afksmart.stat.whileAFK.damageDealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add afksmart.stat.whileAFK.inspectDispenser minecraft.custom:minecraft.inspect_dispenser
scoreboard objectives add afksmart.stat.whileAFK.inspectDropper minecraft.custom:minecraft.inspect_dropper
scoreboard objectives add afksmart.stat.whileAFK.inspectHopper minecraft.custom:minecraft.inspect_hopper
scoreboard objectives add afksmart.stat.whileAFK.interactAnvil minecraft.custom:minecraft.interact_with_anvil
scoreboard objectives add afksmart.stat.whileAFK.interactBeacon minecraft.custom:minecraft.interact_with_beacon
scoreboard objectives add afksmart.stat.whileAFK.interactBlastFurnace minecraft.custom:minecraft.interact_with_blast_furnace
scoreboard objectives add afksmart.stat.whileAFK.interactBrewingstand minecraft.custom:minecraft.interact_with_brewingstand
scoreboard objectives add afksmart.stat.whileAFK.interactCampfire minecraft.custom:minecraft.interact_with_campfire
scoreboard objectives add afksmart.stat.whileAFK.interactCartographyTable minecraft.custom:minecraft.interact_with_cartography_table
scoreboard objectives add afksmart.stat.whileAFK.interactCraftingTable minecraft.custom:minecraft.interact_with_crafting_table
scoreboard objectives add afksmart.stat.whileAFK.interactFurnace minecraft.custom:minecraft.interact_with_furnace
scoreboard objectives add afksmart.stat.whileAFK.interactGrindstone minecraft.custom:minecraft.interact_with_grindstone
scoreboard objectives add afksmart.stat.whileAFK.interactLectern minecraft.custom:minecraft.interact_with_lectern
scoreboard objectives add afksmart.stat.whileAFK.interactLoom minecraft.custom:minecraft.interact_with_loom
scoreboard objectives add afksmart.stat.whileAFK.interactSmithingTable minecraft.custom:minecraft.interact_with_smithing_table
scoreboard objectives add afksmart.stat.whileAFK.interactSmoker minecraft.custom:minecraft.interact_with_smoker
scoreboard objectives add afksmart.stat.whileAFK.interactStonecutter minecraft.custom:minecraft.interact_with_stonecutter
scoreboard objectives add afksmart.stat.whileAFK.openBarrel minecraft.custom:minecraft.open_barrel
scoreboard objectives add afksmart.stat.whileAFK.openChest minecraft.custom:minecraft.open_chest
scoreboard objectives add afksmart.stat.whileAFK.openEnderchest minecraft.custom:minecraft.open_enderchest
scoreboard objectives add afksmart.stat.whileAFK.openShulker minecraft.custom:minecraft.open_shulker_box
scoreboard objectives add afksmart.stat.whileAFK.openTrappedChest minecraft.custom:minecraft.trigger_trapped_chest
scoreboard objectives add afksmart.stat.whileAFK.playNoteblock minecraft.custom:minecraft.play_noteblock
scoreboard objectives add afksmart.stat.whileAFK.playRecord minecraft.custom:minecraft.play_record
scoreboard objectives add afksmart.stat.whileAFK.raidTrigger minecraft.custom:minecraft.raid_trigger
scoreboard objectives add afksmart.stat.whileAFK.raidWin minecraft.custom:minecraft.raid_win
scoreboard objectives add afksmart.stat.whileAFK.rideBoat minecraft.custom:minecraft.boat_one_cm
scoreboard objectives add afksmart.stat.whileAFK.rideHorse minecraft.custom:minecraft.horse_one_cm
scoreboard objectives add afksmart.stat.whileAFK.rideMinecart minecraft.custom:minecraft.minecart_one_cm
scoreboard objectives add afksmart.stat.whileAFK.ridePig minecraft.custom:minecraft.pig_one_cm
scoreboard objectives add afksmart.stat.whileAFK.rideStrider minecraft.custom:minecraft.strider_one_cm

# need to reset to 0 each use
scoreboard objectives add afksmart.stat.isOffline minecraft.custom:minecraft.leave_game
scoreboard objectives add afksmart.online dummy

# Toggles
scoreboard objectives add afksmart.toggle dummy
scoreboard objectives add afksmart.toggleNotAFKTeam dummy

## Create Trigger
scoreboard objectives add afk trigger "/trigger afk"
execute as @a as @s run scoreboard players set @s afk 0

## Create Constants
scoreboard objectives add afksmart.constants dummy
scoreboard players set #20 afksmart.constants 20
scoreboard players set #60 afksmart.constants 60

## Create Team for when AFK
team add AFK
team modify AFK color gray
team modify AFK suffix {"text":" AFK","color":"red","bold":true}

## Create variables that rely on the PlayerTeams datapack
# Enable hook between AFKSmart and PlayerTeams
scoreboard objectives add afksmart.hookTo.PlayerTeams dummy
execute unless score #isInstalled:PlayerTeams afksmart.hookTo.PlayerTeams matches 0..1 run scoreboard players set #isInstalled:PlayerTeams afksmart.hookTo.PlayerTeams 0

# Create variable to hold players original team from PlayerTeams
scoreboard objectives add afksmart.playerTeam dummy
execute as @a as @s unless score @s afksmart.playerTeam matches -1..15 run scoreboard players set @s afksmart.playerTeam -1

## Run Functions
execute if score #isInstalled:PlayerTeams afksmart.hookTo.PlayerTeams matches 0 run function afksmart:togglenotafkteam