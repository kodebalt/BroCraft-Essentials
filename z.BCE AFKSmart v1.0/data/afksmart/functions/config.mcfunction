# Approx Config Time in Minutes
scoreboard players operation #timeToAFKinMinutes afksmart.config = #timeToAFK afksmart.config
scoreboard players operation #timeToAFKinMinutes afksmart.config /= 60 afksmart.constantVar

# Header
tellraw @s [{"text":"                                                                                ","color":"dark_gray","strikethrough":true,"bold":false}]
tellraw @s ["                    ",{"text": "│ ","color": "dark_gray"},{"text":"AFKSmart","color":"gold","bold":true},{"text":": ","color":"gray","bold":false},{"text":"Global Settings","color":"gray","bold": false},{"text": "│","color": "dark_gray"}]
tellraw @s ["                     ",{"text":"¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯","color": "dark_gray"}]

# Body
execute if score #timeToAFK afksmart.config matches 1 run tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #timeToAFK afksmart.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enter the time until player becomes AFK (in seconds).\nEnter ","color":"gray"},"0",{"text":" to disable.","color":"gray"},{"text":"\nAccepts: whole numbers 0-31557600\nDefault: 0","color":"dark_gray"}]}}," Time to Player being AFK (in seconds) ",{"text":"| Current: ","color":"gray"},{"score":{"name":"#timeToAFK","objective":"afksmart.config"},"color":"gray"},{"text":" second (~","color":"gray"},{"score":{"name":"#timeToAFKinMinutes","objective":"afksmart.config"},"color":"gray"},{"text": " min)","color": "gray"}]
execute if score #timeToAFK afksmart.config matches 2.. run tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #timeToAFK afksmart.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enter the time until player becomes AFK (in seconds).\nEnter ","color":"gray"},"0",{"text":" to disable.","color":"gray"},{"text":"\nAccepts: whole numbers 0-31557600\nDefault: 0","color":"dark_gray"}]}}," Time to Player being AFK (in seconds) ",{"text":"| Current: ","color":"gray"},{"score":{"name":"#timeToAFK","objective":"afksmart.config"},"color":"gray"},{"text":" seconds (~","color":"gray"},{"score":{"name":"#timeToAFKinMinutes","objective":"afksmart.config"},"color":"gray"},{"text": " min)","color": "gray"}]

# Footer
tellraw @s [{"text":"                                                                                ","color":"dark_gray","strikethrough":true,"bold":false}]

# Suppresses the extra message sent if done through /function
execute store result score #sendCommandFeedback afksmart.config run gamerule sendCommandFeedback
execute if score #sendCommandFeedback afksmart.config matches 1 run function afksmart:togglecommandfeedback/hide_command_feedback