# Controls everything to do the datapack during each tick

schedule function afksmart:tick 1t

scoreboard players add @a[team=!AFK] Timer 1
scoreboard players set @a[team=AFK] Timer 0

execute as @a[team=!AFK] at @s run function afksmart:saveteam

# Handle Movement Events
execute as @a[scores={Timer=3000..}] at @s run function afksmart:nowafk
execute as @a at @s run function afksmart:resetscores/resettimerwhileafk

execute as @a[team=AFK,scores={Timer=0}] at @s run function afksmart:moving
execute as @a[team=!AFK] at @s run function afksmart:resetscores/resettimerwhileactive

# Keep Timer at 0 when AFK
scoreboard players set @a[scores={Timer=3600..},team=!AFK] Timer 0

# Join Event
scoreboard players reset @a[scores={quit=1}] quit
team join 0 @a[team=]

# Quit Event
#function afksmart:resetoffline

# /trigger afk
execute as @a[scores={afk=1..}] at @s run function afksmart:setafk