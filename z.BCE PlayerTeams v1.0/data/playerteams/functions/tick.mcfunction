# Controls everything to do the datapack during each tick

schedule function playerteams:tick 1t

execute as @a as @s run function playerteams:whatteam

# Enables the '/trigger playerteams' command
scoreboard players enable @a playerteams

# Run if player used '/trigger playerteams' command
execute as @a[scores={playerteams=1..}] as @s run function playerteams:whatteamprint