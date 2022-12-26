## Create Config
scoreboard objectives add playtime.config dummy
execute unless score #hookStatus:AFKSmart playtime.config matches 0..1 run scoreboard players set #hookStatus:AFKSmart playtime.config 0

## Create Scoreboard Objectives
scoreboard objectives add playtime.stat.timeInTicks minecraft.custom:minecraft.play_time

# Internal: Ticks after modulo (timeInTicks % 72000). Gets the partial remaining hour (aka minutes between 0-59 inclusive)
scoreboard objectives add playtime.remainderTimeInTicks dummy

# Internal: 'playtime.remainderTimeInTicks' to minutes. Converts the remaining time in ticks to minutes
scoreboard objectives add playtime.remainderTimeInMinutes dummy

scoreboard objectives add playtime.timeInHours dummy
scoreboard objectives add playtime.timeInDays dummy

## Create Trigger
scoreboard objectives add playtime trigger "/trigger playtime"

## Create Constants
# Setup dummy for storing the below constants
scoreboard objectives add playtime.constants dummy
# Num. of ticks in 1 minute
scoreboard players set #1200 playtime.constants 1200
# Num. of ticks in 1 hour
scoreboard players set #72000 playtime.constants 72000
# Num. of ticks in 1 day
scoreboard players set #1728000 playtime.constants 1728000

## Create variables that rely on the AFKSmart datapack
# Enable hook between Playtime and AFKSmart
scoreboard objectives add playtime.hookToAFKSmart dummy
execute unless score #isInstalled:AFKSmart playtime.hookToAFKSmart matches 0..1 run scoreboard players set #isInstalled:AFKSmart playtime.hookToAFKSmart 0

# Create variable to hold AFK status boolean
scoreboard objectives add playtime.isAFK dummy
execute unless score #isAFK playtime.isAFK matches 0..1 run scoreboard players set #isAFK playtime.isAFK 0