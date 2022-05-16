# Play Time in Hours
scoreboard players operation @s playtime.timeInHours = @s playtime.stat.timeInTicks
scoreboard players operation @s playtime.timeInHours /= 72000 playtime.constantVar

# Calculates the 'decimal point' after getting time in hours
scoreboard players operation @s playtime.remainderTimeInTicks = @s playtime.stat.timeInTicks
scoreboard players operation @s playtime.remainderTimeInTicks %= 72000 playtime.constantVar
scoreboard players operation @s playtime.remainderTimeInMinutes = @s playtime.remainderTimeInTicks
scoreboard players operation @s playtime.remainderTimeInMinutes /= 1200 playtime.constantVar

# Play Time in Days
scoreboard players operation @s playtime.timeInDays = @s playtime.stat.timeInTicks
scoreboard players operation @s playtime.timeInDays /= 1728000 playtime.constantVar