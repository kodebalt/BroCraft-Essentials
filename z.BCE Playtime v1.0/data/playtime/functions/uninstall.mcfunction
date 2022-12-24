# Stops ticking and removes tick function
schedule clear playtime:tick

# Remove Config
scoreboard objectives remove playtime.config

# Remove Constants
scoreboard objectives remove playtime.constantVar

# Remove Scoreboard Objectives
scoreboard objectives remove playtime.stat.timeInTicks
scoreboard objectives remove playtime.remainderTimeInTicks
scoreboard objectives remove playtime.remainderTimeInMinutes
scoreboard objectives remove playtime.timeInHours
scoreboard objectives remove playtime.timeInDays
scoreboard objectives remove playtime.hookToAFKSmart
scoreboard objectives remove playtime.isAFK

# Remove Trigger
scoreboard objectives remove playtime