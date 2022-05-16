# Create Config
scoreboard objectives add playtime.config dummy "Playtime Config"

# Create Scoreboard Objectives
scoreboard objectives add playtime.stat.timeInTicks minecraft.custom:minecraft.play_time "Playtime (Ticks)"
scoreboard objectives add playtime.remainderTimeInTicks dummy "Ticks after modulo (hours -> hours and minutes)"
scoreboard objectives add playtime.remainderTimeInMinutes dummy "playtime.remainderTimeInTicks converted to minutes"
scoreboard objectives add playtime.timeInHours dummy "Playtime (Hours)"
scoreboard objectives add playtime.timeInDays dummy "Playtime (Days)"

# Create Trigger
scoreboard objectives add playtime trigger "/trigger playtime"

# Create Constants
scoreboard objectives add playtime.constantVar dummy "Constant"
# Num. of ticks in 1 minute
scoreboard players set 1200 playtime.constantVar 1200
# Num. of ticks in 1 hour
scoreboard players set 72000 playtime.constantVar 72000
# Num. of ticks in 1 day
scoreboard players set 1728000 playtime.constantVar 1728000