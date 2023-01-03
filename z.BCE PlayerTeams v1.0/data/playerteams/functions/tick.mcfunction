# Controls everything to do the datapack during each tick

schedule function playerteams:tick 1t

# Verify that config values are in range
execute unless score #defaultTeamColor playerteams.config matches 0..15 run scoreboard players set #defaultTeamColor playerteams.config 15
execute as @a as @s unless score @s playerteams.currentTeam matches -1..15 run scoreboard players set @s playerteams.currentTeam -1

# Forces the color of each static team to never change
function playerteams:setstaticteamcolor

# Retreive players team if the team is different from the last tick
execute as @a as @s unless score @s playerteams.tmp.currentTeam = @s playerteams.currentTeam run function playerteams:currentteam
scoreboard players operation @s playerteams.tmp.currentTeam = @s playerteams.currentTeam

# Change 'DEFAULT' team color if admin changes config score from the last tick
execute unless score #defaultTeamColor playerteams.tmp.config = #defaultTeamColor playerteams.config run function playerteams:setdefaultteamcolor
scoreboard players operation #defaultTeamColor playerteams.tmp.config = #defaultTeamColor playerteams.config

# Detect Config Change: Color Code for the 'DEFAULT' Team
execute as @a as @s unless score @s playerteams.tmp.config matches 0 run tellraw @s ["",{"text":"[PlayerTeams] ","color":"gray","bold":true},{"text":"Config option 'Color Code for the 'DEFAULT' Team' changed to ","color":"gray"},{"score":{"name":"#defaultTeamColor","objective":"playerteams.config"},"color":"gold"},{"text":"  "},{"text":"[VIEW COLOR CODES]","color":"gold","hoverEvent":{"action":"show_text","contents":["",{"text":"Color Code Conversions","color":"#E0E0E0"},{"text":"\n"},{"text":"Black","color":"#323232"},{"text":": 0","color":"#E0E0E0"},{"text":", ","color":"#E0E0E0"},{"text":"Dark Blue","color":"dark_blue"},{"text":": 1","color":"#E0E0E0"},{"text":", ","color":"#E0E0E0"},{"text":"Dark Green","color":"dark_green"},{"text":": 2","color":"#E0E0E0"},{"text":", ","color":"#E0E0E0"},{"text":"Dark Aqua","color":"dark_aqua"},{"text":": 3","color":"#E0E0E0"},{"text":", ","color":"#E0E0E0"},{"text":"Dark Red","color":"dark_red"},{"text":": 4","color":"#E0E0E0"},{"text":",","color":"#E0E0E0"},{"text":"\n"},{"text":"Dark Purple","color":"dark_purple"},{"text":": 5","color":"#E0E0E0"},{"text":", ","color":"#E0E0E0"},{"text":"Gold","color":"gold"},{"text":": 6","color":"#E0E0E0"},{"text":", ","color":"#E0E0E0"},{"text":"Gray","color":"gray"},{"text":": 7","color":"#E0E0E0"},{"text":", ","color":"#E0E0E0"},{"text":"Dark Gray","color":"dark_gray"},{"text":": 8","color":"#E0E0E0"},{"text":", ","color":"#E0E0E0"},{"text":"Blue","color":"blue"},{"text":": 9","color":"#E0E0E0"},{"text":", ","color":"#E0E0E0"},{"text":"Green","color":"green"},{"text":": 10","color":"#E0E0E0"},{"text":",","color":"#E0E0E0"},{"text":"\n"},{"text":"Aqua","color":"aqua"},{"text":": 11","color":"#E0E0E0"},{"text":", ","color":"#E0E0E0"},{"text":"Red","color":"red"},{"text":": 12","color":"#E0E0E0"},{"text":", ","color":"#E0E0E0"},{"text":"Light Purple","color":"light_purple"},{"text":": 13","color":"#E0E0E0"},{"text":", ","color":"#E0E0E0"},{"text":"Yellow","color":"yellow"},{"text":": 14","color":"#E0E0E0"},{"text":", ","color":"#E0E0E0"},{"text":"White","color":"white"},{"text":": 15","color":"#E0E0E0"}]}}]
execute as @a as @s run scoreboard players set @s playerteams.tmp.config 0

# Force team-less players into the 'DEFAULT' team
team join DEFAULT @a[team=]

# Enables the '/trigger playerteams' command
scoreboard players enable @a playerteams

# Run if player used '/trigger playerteams' command
execute as @a[scores={playerteams=1..}] as @s run function playerteams:currentteamprint