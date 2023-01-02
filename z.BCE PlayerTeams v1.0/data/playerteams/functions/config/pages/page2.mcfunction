# Header
tellraw @s ["",{"text":"                                                                                ","color":"dark_gray","strikethrough":true}]
tellraw @s ["",{"text":"                     ","color":"dark_gray"},{"text":"PlayerTeams","color":"gold","bold":true},{"text":": ","color":"gray"},{"text":"Global Settings","color":"gray"}]
tellraw @s ["",{"text":"                                                                                ","color":"dark_gray","strikethrough":true}]

# Body
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/team modify DARK_AQUA prefix {\"text\":\"{PREFIX} \",\"bold\":true}"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to modify the prefix of the 'DARK_AQUA' team","color":"gray"},{"text":"\nAccepts: String. Replace '{PREFIX}', including {} chars, before running command.\nDefault: '{PREFIX} '","color":"dark_gray"}]}}," Set Prefix: '",{"text":"DARK_AQUA","color":"dark_aqua"},"' Team"]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/team modify DARK_RED prefix {\"text\":\"{PREFIX} \",\"bold\":true}"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to modify the prefix of the 'DARK_RED' team","color":"gray"},{"text":"\nAccepts: String. Replace '{PREFIX}', including {} chars, before running command.\nDefault: '{PREFIX} '","color":"dark_gray"}]}}," Set Prefix: '",{"text":"DARK_RED","color":"dark_red"},"' Team"]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/team modify DARK_PURPLE prefix {\"text\":\"{PREFIX} \",\"bold\":true}"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to modify the prefix of the 'DARK_PURPLE' team","color":"gray"},{"text":"\nAccepts: String. Replace '{PREFIX}', including {} chars, before running command.\nDefault: '{PREFIX} '","color":"dark_gray"}]}}," Set Prefix: '",{"text":"DARK_PURPLE","color":"dark_purple"},"' Team"]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/team modify GOLD prefix {\"text\":\"{PREFIX} \",\"bold\":true}"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to modify the prefix of the 'GOLD' team","color":"gray"},{"text":"\nAccepts: String. Replace '{PREFIX}', including {} chars, before running command.\nDefault: '{PREFIX} '","color":"dark_gray"}]}}," Set Prefix: '",{"text":"GOLD","color":"gold"},"' Team"]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/team modify GRAY prefix {\"text\":\"{PREFIX} \",\"bold\":true}"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to modify the prefix of the 'GRAY' team","color":"gray"},{"text":"\nAccepts: String. Replace '{PREFIX}', including {} chars, before running command.\nDefault: '{PREFIX} '","color":"dark_gray"}]}}," Set Prefix: '",{"text":"GRAY","color":"gray"},"' Team"]

tellraw @s ["",{"text":"                        "},{"text":"     "},{"text":"<","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function playerteams:config"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Previous Page","color":"gold","bold":true}]}},{"text":"  "},{"text":"Page 2 of 4","color":"gray"},{"text":"  "},{"text":">","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function playerteams:config/pages/page3"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Next Page","color":"gold","bold":true}]}},{"text":"  "},{"text":">>","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function playerteams:config/pages/page4"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Last Page","color":"gold","bold":true}]}}]

# Footer
tellraw @s ["",{"text":"                                                                                ","color":"dark_gray","strikethrough":true}]

# Suppresses the extra system message sent if done through /function
# NOTE: It is impossible to supress the message if done through /trigger. That is in the source code of Minecraft that it is sent before the function is ran.
execute store result score #sendCommandFeedback playerteams.config run gamerule sendCommandFeedback
execute if score #sendCommandFeedback playerteams.config matches 1 run function playerteams:togglecommandfeedback/hide_command_feedback