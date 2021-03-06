module Bot
        ( bot
        )
    where

import           Vindinium

import           Control.Monad          (liftM)
import           Control.Monad.IO.Class (liftIO)
import           Data.Maybe             (fromJust)
import           System.Random          (getStdRandom, randomR)

bot :: Bot
bot = randomBot

myBot :: Bot
--myBot = error "it's up to you :)"
myBot s = do
  liftIO $ print "test"
  --use lenses to get hero from game state
  liftM fromJust $ liftIO $ pickRandom [Stay, North, South, East, West]


randomBot :: Bot
randomBot s = do
  liftIO $ print s
  liftM fromJust $ liftIO $ pickRandom [Stay, North, South, East, West]

inBoard :: Board -> Pos -> Bool
inBoard b (Pos x y) =
    let s = boardSize b
    in x >= 0 && x < s && y >= 0 && y < s

tileAt :: Board -> Pos -> Maybe Tile
tileAt b p@(Pos x y) =
    if inBoard b p
        then Just $ boardTiles b !! idx
        else Nothing
  where
    idx = y * boardSize b + x

pickRandom :: [a] -> IO (Maybe a)
pickRandom [] = return Nothing
pickRandom xs = do
    idx <- getStdRandom (randomR (0, length xs - 1))
    return . Just $ xs !! idx
