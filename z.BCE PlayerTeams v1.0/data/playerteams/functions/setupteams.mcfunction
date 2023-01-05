## Create Teams
team add DEFAULT
team add BLACK
team add DARK_BLUE
team add DARK_GREEN
team add DARK_AQUA
team add DARK_RED
team add DARK_PURPLE
team add GOLD
team add GRAY
team add DARK_GRAY
team add BLUE
team add GREEN
team add AQUA
team add RED
team add LIGHT_PURPLE
team add YELLOW
team add WHITE

# Fixes bug where if player was on same team as another, they can see each other if invisible
team modify DEFAULT seeFriendlyInvisibles false
team modify BLACK seeFriendlyInvisibles false
team modify DARK_BLUE seeFriendlyInvisibles false
team modify DARK_GREEN seeFriendlyInvisibles false
team modify DARK_AQUA seeFriendlyInvisibles false
team modify DARK_RED seeFriendlyInvisibles false
team modify DARK_PURPLE seeFriendlyInvisibles false
team modify GOLD seeFriendlyInvisibles false
team modify GRAY seeFriendlyInvisibles false
team modify DARK_GRAY seeFriendlyInvisibles false
team modify BLUE seeFriendlyInvisibles false
team modify GREEN seeFriendlyInvisibles false
team modify AQUA seeFriendlyInvisibles false
team modify RED seeFriendlyInvisibles false
team modify LIGHT_PURPLE seeFriendlyInvisibles false
team modify YELLOW seeFriendlyInvisibles false
team modify WHITE seeFriendlyInvisibles false

## Set Team Colors
function playerteams:setdefaultteamcolor
function playerteams:setstaticteamcolor

## Set Team Prefix(s)
team modify DEFAULT prefix {"text":"PLAYER ","bold":true}