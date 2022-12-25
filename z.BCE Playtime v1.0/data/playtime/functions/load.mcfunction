## Create Config
scoreboard objectives add playtime.config dummy "Playtime Config"
execute unless score #hookStatus:AFKSmart playtime.config matches 0..1 run scoreboard players set #hookStatus:AFKSmart playtime.config 0

## Create Scoreboard Objectives
scoreboard objectives add playtime.stat.timeInTicks minecraft.custom:minecraft.play_time "playtime.stat.timeInTicks"
# Internal: Ticks after modulo (timeInTicks % 72000). Gets the partial remaining hour (aka minutes between 0-59 inclusive)
scoreboard objectives add playtime.remainderTimeInTicks dummy "playtime.remainderTimeInTicks"
# Internal: 'playtime.remainderTimeInTicks' to minutes. Converts the remaining time in ticks to minutes
scoreboard objectives add playtime.remainderTimeInMinutes dummy "playtime.remainderTimeInMinutes"
scoreboard objectives add playtime.timeInHours dummy "playtime.timeInHours"
scoreboard objectives add playtime.timeInDays dummy "playtime.timeInDays"

## Create Trigger
scoreboard objectives add playtime trigger "/trigger playtime"

## Create Constants
# Setup dummy for storing the below constants
scoreboard objectives add playtime.constantVar dummy "Constant"
# Num. of ticks in 1 minute
scoreboard players set #1200 playtime.constantVar 1200
# Num. of ticks in 1 hour
scoreboard players set #72000 playtime.constantVar 72000
# Num. of ticks in 1 day
scoreboard players set #1728000 playtime.constantVar 1728000

## Create variables that rely on the AFKSmart datapack
# Enable hook between Playtime and AFKSmart
scoreboard objectives add playtime.hookToAFKSmart dummy "AFKSmart Hook"
execute unless score #isInstalled:AFKSmart playtime.hookToAFKSmart matches 0..1 run scoreboard players set #isInstalled:AFKSmart playtime.hookToAFKSmart 0

# Create variable to hold AFK status boolean
scoreboard objectives add playtime.isAFK dummy "Is Player AFK?"
execute unless score #isAFK playtime.isAFK matches 0..1 run scoreboard players set #isAFK playtime.isAFK 0