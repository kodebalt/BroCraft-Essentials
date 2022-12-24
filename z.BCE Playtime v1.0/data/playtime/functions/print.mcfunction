# Prints out the executors playtime (formatted)
# Disables command output (if ran using /function playtime:print)

# Too bad mcfunction doesn't have switch statements :(

# Handles many conditions
#  1. if minute, hour, and/or day is 0
#     Hides the type that is 0. If all are zero, print a message saying the executor has very little playtime
#  2. if minute, hour, and/or day is 1
#  3. if minute, hour, or day is >= 2

# hour=1, min=1, day=0
execute as @s[scores={playtime.timeInHours=1}] run execute as @s[scores={playtime.remainderTimeInMinutes=1}] run execute as @s[scores={playtime.timeInDays=0}] run tellraw @s ["",{"text":"You have ","color":"gray"},{"score":{"name":"@s","objective":"playtime.timeInHours"},"bold":true,"color":"gold"},{"text":" hour","bold":true,"color":"gold"},{"text":" and ","color":"gray"},{"score":{"name":"@s","objective":"playtime.remainderTimeInMinutes"},"bold":true,"color":"gold"},{"text":" minute","bold":true,"color":"gold"},{"text":" of playtime!","color":"gray"}]
# hour=1, min>=2, day=0
execute as @s[scores={playtime.timeInHours=1}] run execute as @s[scores={playtime.remainderTimeInMinutes=2..}] run execute as @s[scores={playtime.timeInDays=0}] run tellraw @s ["",{"text":"You have ","color":"gray"},{"score":{"name":"@s","objective":"playtime.timeInHours"},"bold":true,"color":"gold"},{"text":" hour","bold":true,"color":"gold"},{"text":" and ","color":"gray"},{"score":{"name":"@s","objective":"playtime.remainderTimeInMinutes"},"bold":true,"color":"gold"},{"text":" minutes","bold":true,"color":"gold"},{"text":" of playtime!","color":"gray"}]
# hour=1, min=1, day=1 (lmao not possible but whatever)
execute as @s[scores={playtime.timeInHours=1}] run execute as @s[scores={playtime.remainderTimeInMinutes=1}] run execute as @s[scores={playtime.timeInDays=1}] run tellraw @s ["",{"text":"You have ","color":"gray"},{"score":{"name":"@s","objective":"playtime.timeInHours"},"bold":true,"color":"gold"},{"text":" hour","bold":true,"color":"gold"},{"text":" and ","color":"gray"},{"score":{"name":"@s","objective":"playtime.remainderTimeInMinutes"},"bold":true,"color":"gold"},{"text":" minute","bold":true,"color":"gold"},{"text":" of playtime! (~","color":"gray"},{"score":{"name":"@s","objective":"playtime.timeInDays"},"color":"gray"},{"text":" day)","color":"gray"}]
# hour=1, min=1, day>=2
execute as @s[scores={playtime.timeInHours=1}] run execute as @s[scores={playtime.remainderTimeInMinutes=1}] run execute as @s[scores={playtime.timeInDays=2..}] run tellraw @s ["",{"text":"You have ","color":"gray"},{"score":{"name":"@s","objective":"playtime.timeInHours"},"bold":true,"color":"gold"},{"text":" hour","bold":true,"color":"gold"},{"text":" and ","color":"gray"},{"score":{"name":"@s","objective":"playtime.remainderTimeInMinutes"},"bold":true,"color":"gold"},{"text":" minute","bold":true,"color":"gold"},{"text":" of playtime! (~","color":"gray"},{"score":{"name":"@s","objective":"playtime.timeInDays"},"color":"gray"},{"text":" days)","color":"gray"}]
# hour=1, min>=2, day>=2
execute as @s[scores={playtime.timeInHours=1}] run execute as @s[scores={playtime.remainderTimeInMinutes=2..}] run execute as @s[scores={playtime.timeInDays=2..}] run tellraw @s ["",{"text":"You have ","color":"gray"},{"score":{"name":"@s","objective":"playtime.timeInHours"},"bold":true,"color":"gold"},{"text":" hour","bold":true,"color":"gold"},{"text":" and ","color":"gray"},{"score":{"name":"@s","objective":"playtime.remainderTimeInMinutes"},"bold":true,"color":"gold"},{"text":" minutes","bold":true,"color":"gold"},{"text":" of playtime! (~","color":"gray"},{"score":{"name":"@s","objective":"playtime.timeInDays"},"color":"gray"},{"text":" days)","color":"gray"}]
# hour>=2, min=1, day=1
execute as @s[scores={playtime.remainderTimeInMinutes=1}] run execute as @s[scores={playtime.timeInHours=2..}] run execute as @s[scores={playtime.timeInDays=1}] run tellraw @s ["",{"text":"You have ","color":"gray"},{"score":{"name":"@s","objective":"playtime.timeInHours"},"bold":true,"color":"gold"},{"text":" hours","bold":true,"color":"gold"},{"text":" and ","color":"gray"},{"score":{"name":"@s","objective":"playtime.remainderTimeInMinutes"},"bold":true,"color":"gold"},{"text":" minute","bold":true,"color":"gold"},{"text":" of playtime! (~","color":"gray"},{"score":{"name":"@s","objective":"playtime.timeInDays"},"color":"gray"},{"text":" day)","color":"gray"}]
# hour>=2, min=1, day>=2
execute as @s[scores={playtime.remainderTimeInMinutes=1}] run execute as @s[scores={playtime.timeInHours=2..}] run execute as @s[scores={playtime.timeInDays=2..}] run tellraw @s ["",{"text":"You have ","color":"gray"},{"score":{"name":"@s","objective":"playtime.timeInHours"},"bold":true,"color":"gold"},{"text":" hours","bold":true,"color":"gold"},{"text":" and ","color":"gray"},{"score":{"name":"@s","objective":"playtime.remainderTimeInMinutes"},"bold":true,"color":"gold"},{"text":" minute","bold":true,"color":"gold"},{"text":" of playtime! (~","color":"gray"},{"score":{"name":"@s","objective":"playtime.timeInDays"},"color":"gray"},{"text":" days)","color":"gray"}]
# hour>=2<=23, min=0, day=0
execute as @s[scores={playtime.remainderTimeInMinutes=0}] run execute as @s[scores={playtime.timeInHours=2..23}] run execute as @s[scores={playtime.timeInDays=0}] run tellraw @s ["",{"text":"You have ","color":"gray"},{"score":{"name":"@s","objective":"playtime.timeInHours"},"bold":true,"color":"gold"},{"text":" hours","bold":true,"color":"gold"},{"text":" of playtime!","color":"gray"}]
# hour>=2, min=0, day=1
execute as @s[scores={playtime.remainderTimeInMinutes=0}] run execute as @s[scores={playtime.timeInHours=2..}] run execute as @s[scores={playtime.timeInDays=1}] run tellraw @s ["",{"text":"You have ","color":"gray"},{"score":{"name":"@s","objective":"playtime.timeInHours"},"bold":true,"color":"gold"},{"text":" hours","bold":true,"color":"gold"},{"text":" of playtime! (~","color":"gray"},{"score":{"name":"@s","objective":"playtime.timeInDays"},"color":"gray"},{"text":" day)","color":"gray"}]
# hour>=2, min=0, day>=2
execute as @s[scores={playtime.remainderTimeInMinutes=0}] run execute as @s[scores={playtime.timeInHours=2..}] run execute as @s[scores={playtime.timeInDays=2..}] run tellraw @s ["",{"text":"You have ","color":"gray"},{"score":{"name":"@s","objective":"playtime.timeInHours"},"bold":true,"color":"gold"},{"text":" hours","bold":true,"color":"gold"},{"text":" of playtime! (~","color":"gray"},{"score":{"name":"@s","objective":"playtime.timeInDays"},"color":"gray"},{"text":" days)","color":"gray"}]
# hour=1, min=0, day=0
execute as @s[scores={playtime.remainderTimeInMinutes=0}] run execute as @s[scores={playtime.timeInHours=1}] run execute as @s[scores={playtime.timeInDays=0}] run tellraw @s ["",{"text":"You have ","color":"gray"},{"score":{"name":"@s","objective":"playtime.timeInHours"},"bold":true,"color":"gold"},{"text":" hour","bold":true,"color":"gold"},{"text":" of playtime!","color":"gray"}]
# hour>=2, min>=2, day=1
execute as @s[scores={playtime.timeInDays=1}] run execute as @s[scores={playtime.timeInHours=2..}] run execute as @s[scores={playtime.remainderTimeInMinutes=2..}] run tellraw @s ["",{"text":"You have ","color":"gray"},{"score":{"name":"@s","objective":"playtime.timeInHours"},"bold":true,"color":"gold"},{"text":" hours","bold":true,"color":"gold"},{"text":" and ","color":"gray"},{"score":{"name":"@s","objective":"playtime.remainderTimeInMinutes"},"bold":true,"color":"gold"},{"text":" minutes","bold":true,"color":"gold"},{"text":" of playtime! (~","color":"gray"},{"score":{"name":"@s","objective":"playtime.timeInDays"},"color":"gray"},{"text":" day)","color":"gray"}]

# hour>=2<=23, min=1, day is 0 due to hours being 0<=hours>=23
execute as @s[scores={playtime.timeInHours=2..23}] run execute as @s[scores={playtime.remainderTimeInMinutes=1}] run tellraw @s ["",{"text":"You have ","color":"gray"},{"score":{"name":"@s","objective":"playtime.timeInHours"},"bold":true,"color":"gold"},{"text":" hours","bold":true,"color":"gold"},{"text":" and ","color":"gray"},{"score":{"name":"@s","objective":"playtime.remainderTimeInMinutes"},"bold":true,"color":"gold"},{"text":" minute","bold":true,"color":"gold"},{"text":" of playtime!","color":"gray"}]
# hour>=2<=23, min>=2, day is 0 due to hours being 0<=hours>=23
execute as @s[scores={playtime.timeInHours=2..23}] run execute as @s[scores={playtime.remainderTimeInMinutes=2..}] run tellraw @s ["",{"text":"You have ","color":"gray"},{"score":{"name":"@s","objective":"playtime.timeInHours"},"bold":true,"color":"gold"},{"text":" hours","bold":true,"color":"gold"},{"text":" and ","color":"gray"},{"score":{"name":"@s","objective":"playtime.remainderTimeInMinutes"},"bold":true,"color":"gold"},{"text":" minutes","bold":true,"color":"gold"},{"text":" of playtime!","color":"gray"}]
# hour=0, min=1, day is 0 due to hours being 0
execute as @s[scores={playtime.timeInHours=0}] run execute as @s[scores={playtime.remainderTimeInMinutes=1}] run tellraw @s ["",{"text":"You have ","color":"gray"},{"score":{"name":"@s","objective":"playtime.remainderTimeInMinutes"},"bold":true,"color":"gold"},{"text":" minute","bold":true,"color":"gold"},{"text":" of playtime!","color":"gray"}]
# hour=0, min>=2, day is 0 due to hours being 0<=hours>=23
execute as @s[scores={playtime.timeInHours=0}] run execute as @s[scores={playtime.remainderTimeInMinutes=2..}] run tellraw @s ["",{"text":"You have ","color":"gray"},{"score":{"name":"@s","objective":"playtime.remainderTimeInMinutes"},"bold":true,"color":"gold"},{"text":" minutes","bold":true,"color":"gold"},{"text":" of playtime!","color":"gray"}]

# hour=0, min=0, day is 0 due to hours being 0
execute as @s[scores={playtime.timeInHours=0}] run execute as @s[scores={playtime.remainderTimeInMinutes=0}] run tellraw @s ["",{"text":"You have","color":"gray"},{"text":" less than one minute of ","color":"gold","bold": true},{"text":"playtime! ☹","color":"gray"}]

# hour>=2, min>=2, day>=2
execute as @s[scores={playtime.timeInHours=2..}] run execute as @s[scores={playtime.remainderTimeInMinutes=2..}] run execute as @s[scores={playtime.timeInDays=2..}] run tellraw @s ["",{"text":"You have ","color":"gray"},{"score":{"name":"@s","objective":"playtime.timeInHours"},"bold":true,"color":"gold"},{"text":" hours","bold":true,"color":"gold"},{"text":" and ","color":"gray"},{"score":{"name":"@s","objective":"playtime.remainderTimeInMinutes"},"bold":true,"color":"gold"},{"text":" minutes","bold":true,"color":"gold"},{"text":" of playtime! (~","color":"gray"},{"score":{"name":"@s","objective":"playtime.timeInDays"},"color":"gray"},{"text":" days)","color":"gray"}]

# If int limit is reached
execute as @s[scores={playtime.timeInHours=..-1}] run tellraw @s ["",{"text":"You have ","color":"gray"},{"text":"hit the integer limit","bold":true,"color":"gold"},{"text":" of playtime ticks! ","color":"gray"},{"text":"You crazy animal ☠","color":"red"}]

# Testing
#tellraw @s ["",{"text":"Test: ","color":"red","bold": true},{"text":"You have ","color":"gray"},{"score":{"name":"@s","objective":"playtime.timeInHours"},"bold":true,"color":"gold"},{"text":" hours","bold":true,"color":"gold"},{"text":" and ","color":"gray"},{"score":{"name":"@s","objective":"playtime.remainderTimeInMinutes"},"bold":true,"color":"gold"},{"text":" minutes","bold":true,"color":"gold"},{"text":" of playtime! (~","color":"gray"},{"score":{"name":"@s","objective":"playtime.timeInDays"},"color":"gray"},{"text":" days)","color":"gray"}]

# Reset trigger
scoreboard players set @s playtime 0

# Suppresses the extra system message sent if done through /function
# NOTE: It is impossible to supress the message if done through /trigger. That is in the source code of Minecraft that it is sent before the function is ran.
execute store result score #sendCommandFeedback playtime.config run gamerule sendCommandFeedback
execute if score #sendCommandFeedback playtime.config matches 1 run function playtime:togglecommandfeedback/hide_command_feedback