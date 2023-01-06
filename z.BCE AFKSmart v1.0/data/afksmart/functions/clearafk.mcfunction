function afksmart:resetscores/resetafkstats
function afksmart:rejointeam
title @s clear

tellraw @s ["",{"text":"You are ","color":"gray"},{"text":"no longer ","color":"gold","bold":true},{"text":"AFK","color":"gray"}]
execute at @s run tellraw @a[distance=0.001..] ["",{"selector":"@s"},{"text":" is ","color":"gray"},{"text":"no longer ","color":"gold","bold":true},{"text":"AFK","color":"gray"}]