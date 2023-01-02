execute if score @s afksmart.timer = #timeToAFKInTicks afksmart.config as @s run tellraw @s ["",{"text":"You are ","color":"gray"},{"text":"now ","color":"gold","bold":true},{"text":"AFK","color":"gray"}]
# setup custom colors for 'You'
execute if score @s afksmart.timer = #timeToAFKInTicks afksmart.config at @s run tellraw @a[distance=0.001..] ["",{"selector":"@s"},{"text":" is ","color":"gray"},{"text":"now ","color":"gold","bold":true},{"text":"AFK","color":"gray"}]
execute if score @s afksmart.timer = #timeToAFKInTicks afksmart.config as @s run title @s times 2 80 2
execute if score @s afksmart.timer = #timeToAFKInTicks afksmart.config as @s run title @s title {"text":"You are AFK","color":"red","bold":true}
execute if score @s afksmart.timer = #timeToAFKInTicks afksmart.config as @s run title @s subtitle {"text":"Have fun, don't die","color":"gold"}
execute if score @s afksmart.timer = #timeToAFKInTicks afksmart.config as @s run team join AFK @s