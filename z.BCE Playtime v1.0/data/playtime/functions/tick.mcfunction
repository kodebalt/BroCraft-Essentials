# Controls everything to do the datapack during each tick

schedule function playtime:tick 1t

execute as @a as @s run function playtime:math

scoreboard players enable @a playtime

# /trigger afk
execute as @a[scores={playtime=1..}] at @s run function playtime:print