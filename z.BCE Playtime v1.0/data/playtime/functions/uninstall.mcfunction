# Clears ticking
schedule clear playtime:tick

# Config
scoreboard objectives remove playtime.config

# Scoreboard Objectives
scoreboard objectives remove playtime.stat.timeInTicks
scoreboard objectives remove playtime.remainderTimeInTicks
scoreboard objectives remove playtime.remainderTimeInMinutes
scoreboard objectives remove playtime.timeInHours
scoreboard objectives remove playtime.timeInDays

# Trigger
scoreboard objectives remove playtime

# Constants
scoreboard objectives remove playtime.constantVar