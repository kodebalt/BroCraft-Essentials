# Controls everything to do the datapack during each tick

# Only tick if AFKSmart is enabled
execute if score #enabled afksmart.config matches 1 run schedule function afksmart:tick 1t

# Verify that all values are in range
execute unless score #timeToAFKInSeconds afksmart.config matches 1..86400 run scoreboard players set #timeToAFKInSeconds afksmart.config 60
execute unless score @s afksmart.playerTeam matches -1..15 run scoreboard players set @s afksmart.playerTeam -1

# Calculate the #timeToAFKInSeconds config value in ticks for conditional statements
scoreboard players operation #timeToAFKInTicks afksmart.config = #timeToAFKInSeconds afksmart.config
scoreboard players operation #timeToAFKInTicks afksmart.config *= #20 afksmart.constants

# Calculate the #timeToAFKInMinutes config value in ticks for conditional statements
scoreboard players operation #timeToAFKInMinutes afksmart.config = #timeToAFKInSeconds afksmart.config
scoreboard players operation #timeToAFKInMinutes afksmart.config /= #60 afksmart.constants

# Detect Config Change: Time until Player becomes AFK
execute as @a as @s unless score @s afksmart.tmp.config matches 0 run tellraw @s ["",{"text":"[AFKSmart] ","color":"gray","bold":true},{"text":"Config option 'Time until Player becomes AFK' changed to ","color":"gray"},{"score":{"name":"#timeToAFKInSeconds","objective":"afksmart.config"},"color":"gold"},{"text":" (~","color":"gray"},{"score":{"name":"#timeToAFKInMinutes","objective":"afksmart.config"},"color":"gray"},{"text":" min)","color":"gray"}]
execute as @a as @s if score @s afksmart.timer >= #timeToAFKInTicks afksmart.config run function afksmart:toggleafk
execute as @a as @s run scoreboard players set @s afksmart.tmp.config 0

# Always check if hooks are present. If so, set to true. If not, set to false.
execute if score #isInstalled:PlayerTeams afksmart.hookTo.PlayerTeams matches 0 run execute if entity @r[advancements={brocraftessentials:playerteams=true}] run scoreboard players set #isInstalled:PlayerTeams afksmart.hookTo.PlayerTeams 1
execute if score #isInstalled:PlayerTeams afksmart.hookTo.PlayerTeams matches 1 run execute unless entity @r[advancements={brocraftessentials:playerteams=true}] run scoreboard players set #isInstalled:PlayerTeams afksmart.hookTo.PlayerTeams 0

# PlayerTeams Hook: Create/Delete NOT_AFK team if PlayerTeams (datapack) was disabled/enabled in the last tick
execute unless score #isInstalled:PlayerTeams afksmart.tmp.hookTo.PlayerTeams = #isInstalled:PlayerTeams afksmart.hookTo.PlayerTeams run function afksmart:togglenotafkteam
scoreboard players operation #isInstalled:PlayerTeams afksmart.tmp.hookTo.PlayerTeams = #isInstalled:PlayerTeams afksmart.hookTo.PlayerTeams

# PlayerTeams Hook: Create/Delete NOT_AFK team if PlayerTeams hook was disabled/enabled in the last tick
execute unless score #hookEnabled:PlayerTeams afksmart.tmp.config = #hookEnabled:PlayerTeams afksmart.config run function afksmart:togglenotafkteam
scoreboard players operation #hookEnabled:PlayerTeams afksmart.tmp.config = #hookEnabled:PlayerTeams afksmart.config

# PlayerTeams Hook: Save team for rejointeam function
execute if score #isInstalled:PlayerTeams afksmart.hookTo.PlayerTeams matches 1 if score #hookEnabled:PlayerTeams afksmart.config matches 1 run execute as @a[team=!AFK] as @s run scoreboard players operation @s afksmart.playerTeam = @s playerteams.currentTeam

## Handle timer based on AFK status
# Add 1 each tick to timer so we know how long player is idle
scoreboard players add @a[team=!AFK] afksmart.timer 1

## Handle Movement Events
# Reset timer if player moves
execute as @a[team=!AFK] as @s run function afksmart:onmove

# Set player as AFK is timer reaches config value
execute as @a[team=!AFK] as @s if score #timeToAFKInTicks afksmart.config = @s afksmart.timer as @s run function afksmart:onafk

# Clear AFK if player moves while AFK
execute as @a[team=AFK] as @s run function afksmart:onmovewhileafk

## Join Event
## TODO
#scoreboard players reset @a[scores={quit=1}] quit

## Quit Event
## TODO
#function afksmart:resetoffline

## All players should be in a default team if not assigned a color
# Only run if PlayerTeam Hook is not active
execute if score #isInstalled:PlayerTeams afksmart.hookTo.PlayerTeams matches 0 run team join NOT_AFK @a[team=!AFK,team=!NOT_AFK]

## Enables the '/trigger afk' command
scoreboard players enable @a afk

## Run if player used '/trigger afk' command
execute as @a[scores={afk=1..}] as @s run function afksmart:toggleafk