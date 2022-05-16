# Desc: 
#
# Called by: #minecraft:load

# Create Team for when AFK
team add AFK
team modify AFK color gray
team modify AFK suffix {"text":" AFK","color":"red","bold":true}

# Create Config
scoreboard objectives add afksmart.config dummy "AFKSmart Config"
execute unless score #timeToAFK afksmart.config matches 0..630726000 run scoreboard players set #timeToAFK afksmart.config 0

# Create Scoreboard Objectives
scoreboard objectives add afksmart.timer dummy

scoreboard objectives add afksmart.stat.whileAFK.walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add afksmart.stat.whileAFK.run minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add afksmart.stat.whileAFK.fly minecraft.custom:minecraft.fly_one_cm
scoreboard objectives add afksmart.stat.whileAFK.elyFly minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add afksmart.stat.whileAFK.swim minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add afksmart.stat.whileAFK.sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add afksmart.stat.whileAFK.jump minecraft.custom:minecraft.jump
scoreboard objectives add afksmart.stat.whileAFK.ridePig minecraft.custom:minecraft.pig_one_cm
scoreboard objectives add afksmart.stat.whileAFK.rideHorse minecraft.custom:minecraft.horse_one_cm
scoreboard objectives add afksmart.stat.whileAFK.row minecraft.custom:minecraft.boat_one_cm
scoreboard objectives add afksmart.stat.whileAFK.minecart minecraft.custom:minecraft.minecart_one_cm
scoreboard objectives add afksmart.stat.whileAFK.walkUnderWater minecraft.custom:minecraft.walk_under_water_one_cm
scoreboard objectives add afksmart.stat.whileAFK.walkOnWater minecraft.custom:minecraft.walk_on_water_one_cm

scoreboard objectives add afksmart.stat.whileActive.walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add afksmart.stat.whileActive.run minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add afksmart.stat.whileActive.fly minecraft.custom:minecraft.fly_one_cm
scoreboard objectives add afksmart.stat.whileActive.elyFly minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add afksmart.stat.whileActive.swim minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add afksmart.stat.whileActive.sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add afksmart.stat.whileActive.jump minecraft.custom:minecraft.jump
scoreboard objectives add afksmart.stat.whileActive.ridePig minecraft.custom:minecraft.pig_one_cm
scoreboard objectives add afksmart.stat.whileActive.rideHorse minecraft.custom:minecraft.horse_one_cm
scoreboard objectives add afksmart.stat.whileActive.row minecraft.custom:minecraft.boat_one_cm
scoreboard objectives add afksmart.stat.whileActive.minecart minecraft.custom:minecraft.minecart_one_cm
scoreboard objectives add afksmart.stat.whileActive.walkUnderWater minecraft.custom:minecraft.walk_under_water_one_cm
scoreboard objectives add afksmart.stat.whileActive.walkOnWater minecraft.custom:minecraft.walk_on_water_one_cm

scoreboard objectives add afksmart.stat.isOffline minecraft.custom:minecraft.leave_game

scoreboard objectives add afksmart.currentTeam dummy
scoreboard objectives add afksmart.online dummy

# Create Trigger
scoreboard objectives add afk trigger "/trigger afk"

# Constants
scoreboard objectives add afksmart.constantVar dummy "Constant"
scoreboard players set 60 afksmart.constantVar 60