scoreboard players set @a afksmart.timer 0
scoreboard players set @a afk 0
schedule function afksmart:tick 1t
execute if score #enabled afksmart.config matches 0 run scoreboard players set #enabled afksmart.config 1
function afksmart:config