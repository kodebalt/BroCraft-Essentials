# Stops ticking and removes tick function
schedule clear playtime:tick

# Remove Config
scoreboard objectives remove playtime.config

# Remove Scoreboard Objectives
scoreboard objectives remove playtime.stat.timeInTicks
scoreboard objectives remove playtime.remainderTimeInTicks
scoreboard objectives remove playtime.remainderTimeInMinutes
scoreboard objectives remove playtime.timeInHours
scoreboard objectives remove playtime.timeInDays

# Remove Trigger
scoreboard objectives remove playtime

# Remove Constants
scoreboard objectives remove playtime.constantVar