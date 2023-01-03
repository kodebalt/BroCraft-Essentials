# Controls everything to do the datapack during each tick

schedule function playtime:tick 1t

# Always check if hooks are installed. If so, set to true. If not, set to false.
execute if score #isInstalled:AFKSmart playtime.hookTo.AFKSmart matches 0 run execute if entity @r[advancements={brocraftessentials:afksmart=true}] run scoreboard players set #isInstalled:AFKSmart playtime.hookTo.AFKSmart 1
execute if score #isInstalled:AFKSmart playtime.hookTo.AFKSmart matches 1 run execute unless entity @r[advancements={brocraftessentials:afksmart=true}] run scoreboard players set #isInstalled:AFKSmart playtime.hookTo.AFKSmart 0

# Set player as AFK (or not) depending on the team from AFKSmart
execute if score #isInstalled:AFKSmart playtime.hookTo.AFKSmart matches 1 if score #hookEnabled:AFKSmart playtime.config matches 1 run execute as @a as @s if entity @s[team=!AFK] run scoreboard players set @s playtime.isAFK 0
execute if score #isInstalled:AFKSmart playtime.hookTo.AFKSmart matches 1 if score #hookEnabled:AFKSmart playtime.config matches 1 run execute as @a as @s if entity @s[team=AFK] run scoreboard players set @s playtime.isAFK 1

# Run math functions for use in printing
execute as @a as @s run function playtime:math

# Decrement by one during each tick if the player is AFK
execute if score #isInstalled:AFKSmart playtime.hookTo.AFKSmart matches 1 if score #hookEnabled:AFKSmart playtime.config matches 1 run execute as @a as @s if score @s playtime.isAFK matches 1 run scoreboard players remove @s playtime.stat.timeInTicks 1

# Enables the '/trigger playtime' command
scoreboard players enable @a playtime

# Run if player used '/trigger platime' command
execute as @a[scores={playtime=1..}] as @s run function playtime:print