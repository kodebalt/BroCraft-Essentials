#execute as @a[team=AFK,scores={Timer=0}] at @s run scoreboard players set @s onlineAFK 1
#team empty AFK
#execute as @a[team=!AFK,scores={onlineAFK=1}] at @s run team join AFK