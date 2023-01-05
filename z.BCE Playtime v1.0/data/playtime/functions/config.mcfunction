# Header
tellraw @s ["",{"text":"                                                                                ","color":"dark_gray","strikethrough":true}]
tellraw @s ["",{"text":"                        ","color":"dark_gray"},{"text":"Playtime","color":"gold","bold":true},{"text":": ","color":"gray"},{"text":"Global Settings","color":"gray"}]
tellraw @s ["",{"text":"                                                                                ","color":"dark_gray","strikethrough":true}]

# Body
execute if score #isInstalled:AFKSmart playtime.hookTo.AFKSmart matches 0 run tellraw @s ["",{"text":"[ ❌ ]","color":"gray","strikethrough":true,"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enable ","color":"gray","strikethrough":true},{"text":"AFKSmart Hook","color":"gray","strikethrough":true},{"text":"\nWhen enabled, this allows Playtime to hook into AFKSmart for automatic playtime pausing.","color":"gray"},{"text":"\nDefault: Disabled (Enabled if AFKSmart is installed)","color":"dark_gray"}]}},{"text":" Enable AFKSmart Hook?","color":"gray","strikethrough":true},{"text":"  DEPENDENCY MISSING","color":"red","bold":true}]
execute if score #isInstalled:AFKSmart playtime.hookTo.AFKSmart matches 1 run execute if score #hookEnabled:AFKSmart playtime.config matches 1 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function playtime:config/disable_hook_afksmart"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to disable ","color":"red"},"AFKSmart Hook",{"text":"\nWhen enabled, this allows Playtime to hook into AFKSmart for automatic playtime pausing.","color":"gray"},{"text":"\nDefault: Disabled (Enabled if AFKSmart is installed)","color":"dark_gray"}]}}," Enable AFKSmart Hook?"]
execute if score #isInstalled:AFKSmart playtime.hookTo.AFKSmart matches 1 run execute if score #hookEnabled:AFKSmart playtime.config matches 0 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function playtime:config/enable_hook_afksmart"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enable ","color":"green"},"AFKSmart Hook",{"text":"\nWhen enabled, this allows Playtime to hook into AFKSmart for automatic playtime pausing.","color":"gray"},{"text":"\nDefault: Disabled (Enabled if AFKSmart is installed)","color":"dark_gray"}]}}," Enable AFKSmart Hook?"]

# Footer
tellraw @s ["",{"text":"                                                                                ","color":"dark_gray","strikethrough":true}]

# Suppresses the extra system message sent if done through /function
# NOTE: It is impossible to suppress the message if done through /trigger. That is in the source code of Minecraft that it is sent before the function is ran.
execute store result score #sendCommandFeedback playtime.config run gamerule sendCommandFeedback
execute if score #sendCommandFeedback playtime.config matches 1 run function playtime:togglecommandfeedback/hide_command_feedback