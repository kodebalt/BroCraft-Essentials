# Header
tellraw @s ["",{"text":"                                                                                                         ","color":"dark_gray","strikethrough":true}]
tellraw @s ["",{"text":"                                       ","color":"dark_gray"},{"text":"name","color":"gold","bold":true},{"text":": ","color":"gray","bold":false},{"text":"Global Settings","color":"gray","bold": false}]
tellraw @s ["",{"text":"                                                                                                         ","color":"dark_gray","strikethrough":true}]

# Body
#execute if score #isInstalled:AFKSmart playtime.hookToAFKSmart matches 0 run tellraw @s ["",{"text":"[ ❌ ]","color":"gray","strikethrough":true,"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enable ","color":"gray","strikethrough":true},{"text":"AFKSmart Hook","color":"gray","strikethrough":true},{"text":"\nWhen enabled, this allows Playtime to hook into AFKSmart for automatic playtime pausing.","color":"gray"},{"text":"\nDefault: Disabled","color":"dark_gray"}]}},{"text":" Enable AFKSmart Hook?","color":"gray","strikethrough":true},{"text":"  DEPENDENCY MISSING","color":"red","bold":true}]
#execute if score #isInstalled:AFKSmart playtime.hookToAFKSmart matches 1 run execute if score #hookStatus:AFKSmart playtime.config matches 1 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function playtime:config/disable_hook_afksmart"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to disable ","color":"red"},"AFKSmart Hook",{"text":"\nWhen enabled, this allows Playtime to hook into AFKSmart for automatic playtime pausing.","color":"gray"},{"text":"\nDefault: Disabled","color":"dark_gray"}]}}," Enable AFKSmart Hook?"]
#execute if score #isInstalled:AFKSmart playtime.hookToAFKSmart matches 1 run execute if score #hookStatus:AFKSmart playtime.config matches 0 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function playtime:config/enable_hook_afksmart"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enable ","color":"green"},"AFKSmart Hook",{"text":"\nWhen enabled, this allows Playtime to hook into AFKSmart for automatic playtime pausing.","color":"gray"},{"text":"\nDefault: Disabled","color":"dark_gray"}]}}," Enable AFKSmart Hook?"]

# Footer
tellraw @s ["",{"text":"                                                                                                         ","color":"dark_gray","strikethrough":true,"bold":false}]

# Suppresses the extra message sent if done through /function
execute store result score #sendCommandFeedback name.config run gamerule sendCommandFeedback
execute if score #sendCommandFeedback name.config matches 1 run function name:togglecommandfeedback/hide_command_feedback