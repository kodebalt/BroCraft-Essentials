# Removes all items setup by the datapack

# Stops ticking and removes tick function
schedule clear playerteams:tick

# Remove Config
scoreboard objectives remove playerteams.config
scoreboard objectives remove playerteams.tmp.config

# Remove Scoreboard Objectives / Dummies
scoreboard objectives remove playerteams.currentTeam
scoreboard objectives remove playerteams.tmp.currentTeam

# Remove Trigger
scoreboard objectives remove playerteams

# Remove Constants
scoreboard objectives remove playerteams.constants

# Remove Teams
team remove DEFAULT
team remove BLACK
team remove DARK_BLUE
team remove DARK_GREEN
team remove DARK_AQUA
team remove DARK_RED
team remove DARK_PURPLE
team remove GOLD
team remove GRAY
team remove DARK_GRAY
team remove BLUE
team remove GREEN
team remove AQUA
team remove RED
team remove LIGHT_PURPLE
team remove YELLOW
team remove WHITE