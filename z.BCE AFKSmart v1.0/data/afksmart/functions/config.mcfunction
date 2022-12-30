# Approx Config Time in Seconds
execute if score #enabled afksmart.config matches 1 run scoreboard players operation #timeToAFKinSeconds afksmart.config = #timeToAFKInTicks afksmart.config
execute if score #enabled afksmart.config matches 1 run scoreboard players operation #timeToAFKinSeconds afksmart.config /= #20 afksmart.constants

# Approx Config Time in Minutes
execute if score #enabled afksmart.config matches 1 run scoreboard players operation #timeToAFKinMinutes afksmart.config = #timeToAFKInSeconds afksmart.config
execute if score #enabled afksmart.config matches 1 run scoreboard players operation #timeToAFKinMinutes afksmart.config /= #60 afksmart.constants

# Header
tellraw @s ["",{"text":"                                                                                ","color":"dark_gray","strikethrough":true}]
tellraw @s ["",{"text":"                       ","color":"dark_gray"},{"text":"AFKSmart","color":"gold","bold":true},{"text":": ","color":"gray"},{"text":"Global Settings","color":"gray"}]
tellraw @s ["",{"text":"                                                                                ","color":"dark_gray","strikethrough":true}]

# Body
execute if score #enabled afksmart.config matches 1 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function afksmart:config/disable_afksmart"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to disable ","color":"red"},"AFKSmart",{"text":"\nWhen enabled, this allows AFKSmart to function.","color":"gray"},{"text":"\nDefault: Enabled","color":"dark_gray"}]}}," Enable AFKSmart?"]
execute if score #enabled afksmart.config matches 0 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function afksmart:config/enable_afksmart"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enable ","color":"green"},"AFKSmart",{"text":"\nWhen enabled, this allows AFKSmart to function.","color":"gray"},{"text":"\nDefault: Enabled","color":"dark_gray"}]}}," Enable AFKSmart?"]

execute if score #isInstalled:PlayerTeams afksmart.hookTo.PlayerTeams matches 0 run tellraw @s ["",{"text":"[ ❌ ]","color":"gray","strikethrough":true,"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enable ","color":"gray","strikethrough":true},{"text":"PlayerTeams Hook","color":"gray","strikethrough":true},{"text":"\nWhen enabled, this allows AFKSmart to hook into PlayerTeams for a wide range of teams colors w/ optional prefixes.","color":"gray"},{"text":"\nDefault: Disabled (If PlayerTeams is not installed)","color":"dark_gray"}]}},{"text":" Enable PlayerTeams Hook?","color":"gray","strikethrough":true},{"text":"  DEPENDENCY MISSING","color":"red","bold":true}]
execute if score #isInstalled:PlayerTeams afksmart.hookTo.PlayerTeams matches 1 run execute if score #hookEnabled:PlayerTeams afksmart.config matches 1 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function afksmart:config/disable_hook_playerteams"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to disable ","color":"red"},"PlayerTeams Hook",{"text":"\nWhen enabled, this allows AFKSmart to hook into PlayerTeams for a wide range of teams colors w/ optional prefixes.","color":"gray"},{"text":"\nDefault: Disabled (If PlayerTeams is not installed)","color":"dark_gray"}]}}," Enable PlayerTeams Hook?"]
execute if score #isInstalled:PlayerTeams afksmart.hookTo.PlayerTeams matches 1 run execute if score #hookEnabled:PlayerTeams afksmart.config matches 0 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function afksmart:config/enable_hook_playerteams"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enable ","color":"green"},"PlayerTeams Hook",{"text":"\nWhen enabled, this allows AFKSmart to hook into PlayerTeams for a wide range of teams colors w/ optional prefixes.","color":"gray"},{"text":"\nDefault: Disabled (If PlayerTeams is not installed)","color":"dark_gray"}]}}," Enable PlayerTeams Hook?"]

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #timeToAFKInSeconds afksmart.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enter the time until player becomes AFK (in seconds)","color":"gray"},{"text":"\nAccepts: a whole number (1-86400)\nDefault: 60","color":"dark_gray"},["",{"text":"\nCurrent: ","color":"dark_gray"},{"score":{"name":"#timeToAFKInSeconds","objective":"afksmart.config"},"color":"dark_gray"},{"text":" (~","color":"dark_gray"},{"score":{"name":"#timeToAFKinMinutes","objective":"afksmart.config"},"color":"dark_gray"},{"text":" min)","color":"dark_gray"}]]}}," Time until Player becomes AFK (in seconds) "]

# Footer
tellraw @s ["",{"text":"                                                                                ","color":"dark_gray","strikethrough":true}]

# Suppresses the extra system message sent if done through /function
# NOTE: It is impossible to supress the message if done through /trigger. That is in the source code of Minecraft that it is sent before the function is ran.
execute store result score #sendCommandFeedback afksmart.config run gamerule sendCommandFeedback
execute if score #sendCommandFeedback afksmart.config matches 1 run function afksmart:togglecommandfeedback/hide_command_feedback