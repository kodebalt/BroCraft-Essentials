scoreboard players set #toggleAFKTeam afksmart.toggleNotAFKTeam 1
execute if score #isInstalled:PlayerTeams afksmart.hookTo.PlayerTeams matches 0 run scoreboard players set #toggleAFKTeam afksmart.toggleNotAFKTeam 0
execute if score #hookEnabled:PlayerTeams afksmart.config matches 0 run scoreboard players set #toggleAFKTeam afksmart.toggleNotAFKTeam 0
execute if score #toggleAFKTeam afksmart.toggleNotAFKTeam matches 0 run team add NOT_AFK
execute if score #toggleAFKTeam afksmart.toggleNotAFKTeam matches 1 if score #isInstalled:PlayerTeams afksmart.hookTo.PlayerTeams matches 1 if score #hookEnabled:PlayerTeams afksmart.config matches 1 run team remove NOT_AFK