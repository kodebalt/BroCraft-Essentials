## Create Config
scoreboard objectives add name.config dummy

## Create Scoreboard Objectives
#scoreboard objectives add name.x dummy

## Create Trigger
scoreboard objectives add name trigger "/trigger name"
execute as @a as @s run scoreboard players set @s name 0

## Create Constants
scoreboard objectives add name.constants dummy