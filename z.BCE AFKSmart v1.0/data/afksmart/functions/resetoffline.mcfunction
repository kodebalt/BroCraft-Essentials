#execute as @a[team=AFK,scores={Timer=0}] as @s run scoreboard players set @s onlineAFK 1
#team empty AFK
#execute as @a[team=!AFK,scores={onlineAFK=1}] as @s run team join AFK