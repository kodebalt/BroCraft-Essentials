# Controls everything to do the datapack during each tick

schedule function playtime:tick 1t

# Always check if hooks are present. If so, set to true. If not, set to false.
execute as @a as @s if score #isInstalled:AFKSmart playtime.hookToAFKSmart matches 0 run execute if entity @s[advancements={brocraftessentials:afksmart=true}] run scoreboard players set #isInstalled:AFKSmart playtime.hookToAFKSmart 1
execute as @a as @s if score #isInstalled:AFKSmart playtime.hookToAFKSmart matches 1 run execute unless entity @s[advancements={brocraftessentials:afksmart=true}] run scoreboard players set #isInstalled:AFKSmart playtime.hookToAFKSmart 0

# Set player as AFK (or not) depending on the team from AFKSmart
execute as @a as @s if score #hookStatus:AFKSmart playtime.config matches 1 run execute as @a as @s if score #isInstalled:AFKSmart playtime.hookToAFKSmart matches 1 run execute if entity @s[team=!AFK] run scoreboard players set @s playtime.isAFK 0
execute as @a as @s if score #hookStatus:AFKSmart playtime.config matches 1 run execute as @a as @s if score #isInstalled:AFKSmart playtime.hookToAFKSmart matches 1 run execute if entity @s[team=AFK] run scoreboard players set @s playtime.isAFK 1

execute as @a as @s run function playtime:math

# Decrement one each tick if the player is AFK
execute as @a as @s if score #hookStatus:AFKSmart playtime.config matches 1 run execute as @a as @s if score @s playtime.isAFK matches 1 run scoreboard players remove @s playtime.stat.timeInTicks 1

# Enables the '/trigger playtime' command
scoreboard players enable @a playtime

# Run if player used '/trigger platime' command
execute as @a[scores={playtime=1..}] as @s run function playtime:print