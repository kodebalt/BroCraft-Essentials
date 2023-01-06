# Controls everything to do the datapack during each tick

schedule function playerteams:tick 1t

# Verify that config values are in range if they are do this: set isValid flag to true and set it back to the lastValid score. If they are not do this: store last valid value, set isValid flag to false
execute if score #defaultTeamColor playerteams.config.isValid matches 0 if score #defaultTeamColor playerteams.config matches 0..15 run function playerteams:configcheck_valid_defaultteamcolor
execute unless score #defaultTeamColor playerteams.config.lastValid = #defaultTeamColor playerteams.config run scoreboard players operation #defaultTeamColor playerteams.config.lastValid = #defaultTeamColor playerteams.config
execute unless score #defaultTeamColor playerteams.config.isValid matches 0 unless score #defaultTeamColor playerteams.config matches 0..15 run function playerteams:configcheck_invalid_defaultteamcolor

# Keep non-config scores in proper range (config scores are above)
execute as @a as @s unless score @s playerteams.currentTeam matches -1..15 run scoreboard players set @s playerteams.currentTeam -1

# Forces the color of each static team to never change
function playerteams:setstaticteamcolor

# Retrieve players team if the team is different from the last tick
execute as @a as @s unless score @s playerteams.tmp.currentTeam = @s playerteams.currentTeam run function playerteams:currentteam
scoreboard players operation @s playerteams.tmp.currentTeam = @s playerteams.currentTeam

# Change 'DEFAULT' team color if admin changes config score from the last tick
execute unless score #defaultTeamColor playerteams.tmp.config = #defaultTeamColor playerteams.config run function playerteams:setdefaultteamcolor
scoreboard players operation #defaultTeamColor playerteams.tmp.config = #defaultTeamColor playerteams.config

# Detect Config Change: Color Code for the 'DEFAULT' Team
execute as @a as @s unless score @s playerteams.tmp.config matches -2147483648 if score #defaultTeamColor playerteams.config.isValid matches 0 run tellraw @s ["",{"text":"[PlayerTeams] ","color":"gray","bold":true},{"text":"Input out of range, config value unchanged","color":"gray"}]
execute as @a as @s unless score @s playerteams.tmp.config matches -2147483648 run function playerteams:colorcodeconfigchangeprint
execute as @a as @s run scoreboard players set @s playerteams.tmp.config -2147483648

# Force team-less players into the 'DEFAULT' team
team join DEFAULT @a[team=]

# Enables the '/trigger playerteams' command
scoreboard players enable @a playerteams

# Run if player used '/trigger playerteams' command
execute as @a[scores={playerteams=1..}] as @s run function playerteams:currentteamprint

# Enables the '/trigger joinateam' command
scoreboard players enable @a joinateam

# Run if player used '/trigger joinateam' command
execute as @a[scores={joinateam=1..}] as @s run function playerteams:joinateam

# Enables the '/trigger editmyteam' command
scoreboard players enable @a editmyteam

# Run if player used '/trigger editmyteam' command
execute as @a[scores={editmyteam=1..}] as @s run function playerteams:editmyteam