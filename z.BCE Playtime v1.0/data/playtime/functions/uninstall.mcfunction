# Removes all items setup by the datapack

# Stops ticking and removes tick function
schedule clear playtime:tick

# Remove Config
scoreboard objectives remove playtime.config

# Remove Scoreboard Objectives / Dummies
scoreboard objectives remove playtime.stat.timeInTicks
scoreboard objectives remove playtime.remainderTimeInTicks
scoreboard objectives remove playtime.remainderTimeInMinutes
scoreboard objectives remove playtime.timeInHours
scoreboard objectives remove playtime.timeInDays

# Remove Trigger
scoreboard objectives remove playtime

# Remove Constants
scoreboard objectives remove playtime.constants

# Remove AFKSmart Hook
scoreboard objectives remove playtime.hookTo.AFKSmart
scoreboard objectives remove playtime.isAFK