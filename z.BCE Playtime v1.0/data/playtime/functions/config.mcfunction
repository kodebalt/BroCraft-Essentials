# Header
tellraw @s ["",{"text":"                                                                                                         ","color":"dark_gray","strikethrough":true}]
tellraw @s ["",{"text":"                                ","color":"dark_gray"},{"text":"Playtime","color":"gold","bold":true},{"text":": ","color":"gray","bold":false},{"text":"Global Settings","color":"gray","bold": false},{"text":"                     ","color":"dark_gray"}]
tellraw @s ["",{"text":"                                                                                                         ","color":"dark_gray","strikethrough":true}]

# Body
execute if score #hookStatus:AFKSmart playtime.config matches 1 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function playtime:config/disable_hook_afksmart"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to disable ","color":"red"},"AFKSmart Hook",{"text":"\nWhen enabled, this allows Playtime to hook into AFKSmart for automatic playtime pausing.","color":"gray"},{"text":"\nDefault: Disabled","color":"dark_gray"}]}}," Enable AFKSmart Hook?"]
execute if score #hookStatus:AFKSmart playtime.config matches 0 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function playtime:config/enable_hook_afksmart"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enable ","color":"green"},"AFKSmart Hook",{"text":"\nWhen enabled, this allows Playtime to hook into AFKSmart for automatic playtime pausing.","color":"gray"},{"text":"\nDefault: Disabled","color":"dark_gray"}]}}," Enable AFKSmart Hook?"]

# Footer
tellraw @s ["",{"text":"                                                                                                         ","color":"dark_gray","strikethrough":true,"bold":false}]

# Suppresses the extra message sent if done through /function
execute store result score #sendCommandFeedback playtime.config run gamerule sendCommandFeedback
execute if score #sendCommandFeedback playtime.config matches 1 run function playtime:togglecommandfeedback/hide_command_feedback