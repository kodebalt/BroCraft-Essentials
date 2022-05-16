execute as @a[scores={Timer=3000..}] at @s run tellraw @a[scores={Timer=3000..}] ["",{"text":"You are now ","color":"yellow","bold":true},{"text":"AFK","color":"red","bold":true}]
execute as @a[scores={Timer=3000..}] at @s run tellraw @a ["",{"selector":"@a[scores={Timer=3000..},limit=1]"},{"text":" is now AFK","color":"gray"}]
execute as @a[scores={Timer=3000..}] at @s run title @s times 2 80 2
execute as @a[scores={Timer=3000..}] at @s run title @s title {"text":"You are AFK","color":"red"}
execute as @a[scores={Timer=3000..}] at @s run title @s subtitle {"text":"Have fun, don't die","color":"yellow"}
team join AFK @a[scores={Timer=3000..}]