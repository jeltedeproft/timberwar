-- This is the entry-point to your game mode and should be used primarily to precache models/particles/sounds/etc

require('internal/util')
require('gamemode')

function Precache( context )
  PrecacheUnitByNameSync("npc_dota_hero_shredder", context)
  PrecacheUnitByNameSync("npc_dota_hero_furion", context)
end

-- Create the game mode when we activate
function Activate()
  GameRules.GameMode = GameMode()
  GameRules.GameMode:_InitGameMode()
end