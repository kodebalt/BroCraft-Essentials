# Controls everything to do the datapack during each tick

## Only tick if AFKSmart is enabled
execute if score #enabled afksmart.config matches 1 run schedule function afksmart:tick 1t

## Store the original team of a player for the rejointeam function
execute as @a[team=!AFK] at @s run function afksmart:saveteam

## Calculate to Time to AFK config value in ticks for conditional statements
scoreboard players operation #timeToAFKInTicks afksmart.config = #timeToAFKInSeconds afksmart.config
scoreboard players operation #timeToAFKInTicks afksmart.config *= #20 afksmart.constantVar

## Handle timer based on AFK status
# Add 1 each tick to timer so we know how long player is idle
scoreboard players add @a[team=!AFK] afksmart.timer 1

# Set timer to 0 if player is AFK, since there is no reason to track how long they are AFK
scoreboard players set @a[team=AFK] afksmart.timer 0

## Handle Movement Events
# Reset timer if player moves
execute as @a[team=!AFK] at @s run function afksmart:onmove

# Set player as AFK is timer reaches config value
execute as @a[team=!AFK] if score #timeToAFKInTicks afksmart.config = @s afksmart.timer at @s run function afksmart:onafk

# Clear AFK if player moves while AFK
execute as @a[team=AFK] at @s run function afksmart:onmovewhileafk

## Join Event
## TODO
#scoreboard players reset @a[scores={quit=1}] quit

## Quit Event
## TODO
#function afksmart:resetoffline

## All players should be in a default team if not assigned a color
team join DEFAULT @a[team=]

## Enables the '/trigger afk' command
scoreboard players enable @a afk

## Run if player used '/trigger afk' command
execute as @a[scores={afk=1..}] at @s run function afksmart:overrideafk