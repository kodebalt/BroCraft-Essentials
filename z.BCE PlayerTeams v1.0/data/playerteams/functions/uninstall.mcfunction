# Removes all items setup by the datapack

# Stops ticking and removes tick function
schedule clear playerteams:tick

# Remove Config
scoreboard objectives remove playerteams.config

# Remove Scoreboard Objectives / Dummies
scoreboard objectives remove playerteams.whatTeam

# Remove Trigger
scoreboard objectives remove playerteams

# Remove Constants
scoreboard objectives remove playerteams.constants