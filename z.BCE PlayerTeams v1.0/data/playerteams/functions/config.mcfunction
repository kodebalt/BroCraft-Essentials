# Header
tellraw @s ["",{"text":"                                                                                ","color":"dark_gray","strikethrough":true}]
tellraw @s ["",{"text":"                     ","color":"dark_gray"},{"text":"PlayerTeams","color":"gold","bold":true},{"text":": ","color":"gray"},{"text":"Global Settings","color":"gray"}]
tellraw @s ["",{"text":"                                                                                ","color":"dark_gray","strikethrough":true}]

# Body
function playerteams:config/printpropercolor_config_colorcode_default

function playerteams:config/printpropercolor_config_setprefix_default
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/team modify BLACK prefix {\"text\":\"{PREFIX} \",\"bold\":true}"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to modify the prefix of the '","color":"gray"},{"text":"BLACK","color":"#323232"},{"text":"' team","color":"gray"},{"text":"\nAccepts: String. Replace '{PREFIX}', including {} chars, before running command.\nDefault: '{PREFIX} '","color":"dark_gray"}]}}," Set Prefix: '",{"text":"BLACK","color":"black"},"' Team"]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/team modify DARK_BLUE prefix {\"text\":\"{PREFIX} \",\"bold\":true}"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to modify the prefix of the '","color":"gray"},{"text":"DARK_BLUE","color":"dark_blue"},{"text":"' team","color":"gray"},{"text":"\nAccepts: String. Replace '{PREFIX}', including {} chars, before running command.\nDefault: '{PREFIX} '","color":"dark_gray"}]}}," Set Prefix: '",{"text":"DARK_BLUE","color":"dark_blue"},"' Team"]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/team modify DARK_GREEN prefix {\"text\":\"{PREFIX} \",\"bold\":true}"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to modify the prefix of the '","color":"gray"},{"text":"DARK_GREEN","color":"dark_green"},{"text":"' team","color":"gray"},{"text":"\nAccepts: String. Replace '{PREFIX}', including {} chars, before running command.\nDefault: '{PREFIX} '","color":"dark_gray"}]}}," Set Prefix: '",{"text":"DARK_GREEN","color":"dark_green"},"' Team"]

tellraw @s ["",{"text":"                        "},[{"text":"      "},{"text":"  ","bold":true}],{"text":"Page 1 of 4","color":"gray"},{"text":"  "},{"text":">","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function playerteams:config/pages/page2"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Next Page","color":"gold"}]}},{"text":"  "},{"text":">>","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function playerteams:config/pages/page4"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Last Page","color":"gold"}]}}]

# Footer
tellraw @s ["",{"text":"                                                                                ","color":"dark_gray","strikethrough":true}]

# Suppresses the extra system message sent if done through /function
# NOTE: It is impossible to suppress the message if done through /trigger. That is in the source code of Minecraft that it is sent before the function is ran.
execute store result score #sendCommandFeedback playerteams.config run gamerule sendCommandFeedback
execute if score #sendCommandFeedback playerteams.config matches 1 run function playerteams:togglecommandfeedback/hide_command_feedback