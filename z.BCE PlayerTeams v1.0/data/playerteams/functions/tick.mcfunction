# Controls everything to do the datapack during each tick

schedule function playerteams:tick 1t

# Verify that config values are in range
execute unless score #defaultTeamColor playerteams.config matches 0..15 run scoreboard players set #defaultTeamColor playerteams.config 15
execute unless score @s playerteams.currentTeam matches -1..15 run scoreboard players set @s playerteams.currentTeam -1

# Forces the color of each static team to never change
function playerteams:setstaticteamcolor

# Retreive players team if the team is different from the last tick
execute as @a as @s unless score @s playerteams.tmp.currentTeam = @s playerteams.currentTeam run function playerteams:currentteam
scoreboard players operation @s playerteams.tmp.currentTeam = @s playerteams.currentTeam

# Change 'DEFAULT' team color if admin changes config score from the last tick
execute unless score #defaultTeamColor playerteams.tmp.config = #defaultTeamColor playerteams.config run function playerteams:setdefaultteamcolor
scoreboard players operation #defaultTeamColor playerteams.tmp.config = #defaultTeamColor playerteams.config

# Force team-less players into the 'DEFAULT' team
team join DEFAULT @a[team=]

# Enables the '/trigger playerteams' command
scoreboard players enable @a playerteams

# Run if player used '/trigger playerteams' command
execute as @a[scores={playerteams=1..}] as @s run function playerteams:currentteamprint