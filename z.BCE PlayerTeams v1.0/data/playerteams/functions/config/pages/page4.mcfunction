# Header
tellraw @s ["",{"text":"                                                                                ","color":"dark_gray","strikethrough":true}]
tellraw @s ["",{"text":"                     ","color":"dark_gray"},{"text":"PlayerTeams","color":"gold","bold":true},{"text":": ","color":"gray"},{"text":"Global Settings","color":"gray"}]
tellraw @s ["",{"text":"                                                                                ","color":"dark_gray","strikethrough":true}]

# Body
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/team modify LIGHT_PURPLE prefix {\"text\":\"{PREFIX} \",\"bold\":true}"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to modify the prefix of the 'LIGHT_PURPLE' team","color":"gray"},{"text":"\nAccepts: String. Replace '{PREFIX}', including {} chars, before running command.\nDefault: '{PREFIX} '","color":"dark_gray"}]}}," Set Prefix: '",{"text":"LIGHT_PURPLE","color":"light_purple"},"' Team"]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/team modify YELLOW prefix {\"text\":\"{PREFIX} \",\"bold\":true}"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to modify the prefix of the 'YELLOW' team","color":"gray"},{"text":"\nAccepts: String. Replace '{PREFIX}', including {} chars, before running command.\nDefault: '{PREFIX} '","color":"dark_gray"}]}}," Set Prefix: '",{"text":"YELLOW","color":"yellow"},"' Team"]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/team modify WHITE prefix {\"text\":\"{PREFIX} \",\"bold\":true}"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to modify the prefix of the 'WHITE' team","color":"gray"},{"text":"\nAccepts: String. Replace '{PREFIX}', including {} chars, before running command.\nDefault: '{PREFIX} '","color":"dark_gray"}]}}," Set Prefix: '",{"text":"WHITE","color":"white"},"' Team"]

tellraw @s ["",{"text":"                        "},{"text":"<<","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function playerteams:config"},"hoverEvent":{"action":"show_text","contents":["",{"text":"First Page","color":"gold","bold":true}]}},{"text":"  "},{"text":"<","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function playerteams:config/pages/page3"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Previous Page","color":"gold","bold":true}]}},{"text":"  "},{"text":"Page 4 of 4","color":"gray"}]

# Footer
tellraw @s ["",{"text":"                                                                                ","color":"dark_gray","strikethrough":true}]

# Suppresses the extra system message sent if done through /function
# NOTE: It is impossible to supress the message if done through /trigger. That is in the source code of Minecraft that it is sent before the function is ran.
execute store result score #sendCommandFeedback playerteams.config run gamerule sendCommandFeedback
execute if score #sendCommandFeedback playerteams.config matches 1 run function playerteams:togglecommandfeedback/hide_command_feedback