scoreboard players set @s afksmart.toggle 1
execute unless entity @s[team=AFK] run scoreboard players set @s afksmart.toggle 0
execute unless entity @s[team=AFK] run scoreboard players operation @s afksmart.timer = #timeToAFKInTicks afksmart.config
execute unless entity @s[team=AFK] run function afksmart:onafk
execute if score @s afksmart.toggle matches 1 if entity @s[team=AFK] run function afksmart:clearafk

scoreboard players set @s afk 0