## Create Config
scoreboard objectives add playerteams.config dummy
scoreboard objectives add playerteams.config.lastValid dummy
scoreboard objectives add playerteams.config.isValid dummy
scoreboard objectives add playerteams.tmp.config dummy
scoreboard players set @a playerteams.tmp.config -2147483648
execute unless score #defaultTeamColor playerteams.config matches 0..15 run scoreboard players set #defaultTeamColor playerteams.config 15

## Create Scoreboard Objectives
scoreboard objectives add playerteams.currentTeam dummy
scoreboard objectives add playerteams.tmp.currentTeam dummy
execute as @a as @s unless score @s playerteams.currentTeam matches -1..15 run scoreboard players set @s playerteams.currentTeam -1

## Create Triggers
scoreboard objectives add playerteams trigger "/trigger playerteams"
execute as @a as @s run scoreboard players set @s playerteams 0

scoreboard objectives add joinateam trigger "/trigger joinateam"
execute as @a as @s run scoreboard players set @s joinateam 0

scoreboard objectives add editmyteam trigger "/trigger editmyteam"
execute as @a as @s run scoreboard players set @s editmyteam 0

## Create Constants
scoreboard objectives add playerteams.constants dummy

## Setup Teams
function playerteams:setupteams

## Rejoin team (if config value is set)
schedule function playerteams:rejointeam 1t