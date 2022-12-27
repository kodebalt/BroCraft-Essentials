# Controls everything to do the datapack during each tick

schedule function playerteams:tick 1t

# Verify that config values are in range
execute unless score #defaultTeamColor playerteams.config matches 0..15 run scoreboard players set #defaultTeamColor playerteams.config 15
execute unless score @s playerteams.whatTeam matches -1..15 run scoreboard players set @s playerteams.whatTeam -1

execute as @a as @s run function playerteams:whatteam

function playerteams:setdefaultteamcolor

# Enables the '/trigger playerteams' command
scoreboard players enable @a playerteams

# Run if player used '/trigger playerteams' command
execute as @a[scores={playerteams=1..}] as @s run function playerteams:whatteamprint