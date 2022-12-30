execute as @s run function afksmart:resetscores/resetafkstats
execute as @s run function afksmart:rejointeam
execute as @s run title @s clear
tellraw @s ["",{"text":"You are no longer ","color":"gray"},{"text":"AFK","color":"gold","bold":true}]
# setup custom colors for 'You'
execute at @s run tellraw @a[distance=0.001..] ["",{"selector":"@s"},{"text":" is no longer ","color":"gray"},{"text":"AFK","color":"gold","bold":true}]