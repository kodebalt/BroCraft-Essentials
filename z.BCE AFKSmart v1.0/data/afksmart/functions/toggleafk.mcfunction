scoreboard players set @s afksmart.toggle 1
execute unless entity @s[team=AFK] run scoreboard players set @s afksmart.toggle 0
execute unless entity @s[team=AFK] run scoreboard players operation @s afksmart.timer = #timeToAFKInTicks afksmart.config
execute unless entity @s[team=AFK] run function afksmart:onafk
execute if score @s afksmart.toggle matches 1 if entity @s[team=AFK] run function afksmart:clearafk

scoreboard players set @s afk 0

# Suppresses the extra system message sent if done through /function
# NOTE: It is impossible to supress the message if done through /trigger. That is in the source code of Minecraft that it is sent before the function is ran.
execute store result score #sendCommandFeedback afksmart.config run gamerule sendCommandFeedback
execute if score #sendCommandFeedback afksmart.config matches 1 run function afksmart:togglecommandfeedback/hide_command_feedback