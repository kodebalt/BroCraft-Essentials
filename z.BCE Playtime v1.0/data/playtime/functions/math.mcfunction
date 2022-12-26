# Play Time in Hours
scoreboard players operation @s playtime.timeInHours = @s playtime.stat.timeInTicks
scoreboard players operation @s playtime.timeInHours /= #72000 playtime.constants

# Calculates the leftover minutes that dont make a full hour (aka minutes between 0-59 inclusive)
scoreboard players operation @s playtime.remainderTimeInTicks = @s playtime.stat.timeInTicks
scoreboard players operation @s playtime.remainderTimeInTicks %= #72000 playtime.constants
scoreboard players operation @s playtime.remainderTimeInMinutes = @s playtime.remainderTimeInTicks
scoreboard players operation @s playtime.remainderTimeInMinutes /= #1200 playtime.constants

# Play Time in Days
scoreboard players operation @s playtime.timeInDays = @s playtime.stat.timeInTicks
scoreboard players operation @s playtime.timeInDays /= #1728000 playtime.constants