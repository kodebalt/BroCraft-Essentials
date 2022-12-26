## Create Config
scoreboard objectives add playerteams.config dummy
execute unless score #defaultTeamColor playerteams.config matches 0..15 run scoreboard players set #defaultTeamColor playerteams.config 15

## Create Scoreboard Objectives
scoreboard objectives add playerteams.whatTeam dummy
execute unless score @s playerteams.whatTeam matches -1..15 run scoreboard players set @s playerteams.whatTeam -1

## Create Trigger
scoreboard objectives add playerteams trigger "/trigger playerteams"

## Create Constants
scoreboard objectives add playerteams.constants dummy