## Create Config
scoreboard objectives add playtime.config dummy "Playtime Config"

## Create Scoreboard Objectives
scoreboard objectives add playtime.stat.timeInTicks minecraft.custom:minecraft.play_time "Playtime (Ticks)"
# Gets the partial remaining hour (aka minutes between 0-59 inclusive)
scoreboard objectives add playtime.remainderTimeInTicks dummy "Internal: Ticks after modulo (timeInTicks % 72000)"
# Converts the remaining time in ticks to minutes
scoreboard objectives add playtime.remainderTimeInMinutes dummy "Internal: 'playtime.remainderTimeInTicks' to minutes"
scoreboard objectives add playtime.timeInHours dummy "Playtime (Hours)"
scoreboard objectives add playtime.timeInDays dummy "Playtime (Days)"

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
# Used to subtract 1 tick each tick from playtime stat if player is AFK
scoreboard players set #1 playtime.constantVar 1

## Create variables that rely on the AFKSmart datapack
# Enable hook between Playtime and AFKSmart
scoreboard objectives add playtime.hookToAFKSmart dummy "AFKSmart Hook"
scoreboard players set #isInstalled:AFKSmart playtime.hookToAFKSmart 0
# Create variable to hold AFK status boolean
scoreboard objectives add playtime.isAFK dummy "Is Player AFK?"
scoreboard players set #isAFK playtime.isAFK 0