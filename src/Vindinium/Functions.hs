


module Vindinium.Functions
  where

import           Vindinium.Types


getNearestTavernPos :: Board
                    -> Pos
getNearestTavernPos = undefined

getNearestMinePos :: Board
                  -> Pos
getNearestMinePos = undefined

getNearestEnemyPos :: Board
                   -> Pos
getNearestEnemyPos = undefined


calcPath :: Pos
         -> Pos
         -> [Pos]
calcPath = undefined



posToDir :: Pos
         -> Pos
         -> Dir
posToDir = undefined



distanceManhattan :: Pos
                  -> Pos
                  -> Integer
distanceManhattan = undefined


orderByDistance :: Pos
                -> [Pos]
                -> [Pos]
orderByDistance = undefined
