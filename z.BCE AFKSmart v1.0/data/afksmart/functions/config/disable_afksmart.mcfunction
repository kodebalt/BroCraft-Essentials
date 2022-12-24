execute as @a[team=AFK] at @s run function afksmart:toggleafk
execute if score #enabled afksmart.config matches 1 run scoreboard players set #enabled afksmart.config 0
function afksmart:config