execute as @a[team=AFK] as @s run function afksmart:toggleafk
execute if score #enabled afksmart.config matches 1 run scoreboard players set #enabled afksmart.config 0
function afksmart:config