execute if score @s afksmart.timer = #timeToAFKInTicks afksmart.config at @s run tellraw @s ["",{"text":"You are now ","color":"yellow","bold":true},{"text":"AFK","color":"red","bold":true}]
execute if score @s afksmart.timer = #timeToAFKInTicks afksmart.config at @s run tellraw @a ["",{"selector":"@s"},{"text":" is now AFK","color":"gray"}]
execute if score @s afksmart.timer = #timeToAFKInTicks afksmart.config at @s run title @s times 2 80 2
execute if score @s afksmart.timer = #timeToAFKInTicks afksmart.config at @s run title @s title {"text":"You are AFK","color":"red"}
execute if score @s afksmart.timer = #timeToAFKInTicks afksmart.config at @s run title @s subtitle {"text":"Have fun, don't die","color":"yellow"}
execute if score @s afksmart.timer = #timeToAFKInTicks afksmart.config at @s run team join AFK @s