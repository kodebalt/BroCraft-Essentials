# Controls everything to do the datapack during each tick

schedule function name:tick 1t

# Enables the '/trigger name' command
scoreboard players enable @a name

# Run if player used '/trigger name' command
execute as @a[scores={name=1..}] as @s run function name:x