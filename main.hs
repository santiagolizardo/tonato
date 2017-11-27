{-# LANGUAGE OverloadedStrings #-}

import Control.Monad (when)
import System.Environment (getProgName, getArgs)
import Data.Char (isUpper, toLower)
import Data.Text (toUpper)
import System.Exit (exitFailure)

import qualified Data.Map as Map

-- |Dictionary with all the NATO alphabet
natoMap :: Map.Map Char String
natoMap = Map.fromList [
  ('a', "alpha"),
  ('b', "bravo"),
  ('c', "charlie"),
  ('d', "delta"),
  ('e', "echo"),
  ('f', "foxtrot"),
  ('g', "golf"),
  ('h', "hotel"),
  ('i', "india"),
  ('j', "juliett"),
  ('k', "kilo"),
  ('l', "lima"),
  ('m', "mike"),
  ('n', "november"),
  ('o', "oscar"),
  ('p', "papa"),
  ('q', "quebec"),
  ('r', "romeo"),
  ('s', "sierra"),
  ('t', "tango"),
  ('u', "uniform"),
  ('v', "victor"),
  ('w', "whiskey"),
  ('x', "xray"),
  ('y', "yankee"),
  ('z', "zulu")
  ]

translateChar :: Char -> String
translateChar c =
  (if isUpper c then n else n) -- The then condition needs to be passed to toUpper
  where
  n = (Map.findWithDefault ([c] :: String) (toLower c) natoMap) :: String

toNato :: String -> String
toNato = concatMap translateChar

main :: IO()
main = do
  progName <- getProgName
  args <- getArgs
  when (length args /= 1) $ do
    putStrLn ("usage: " ++ progName ++ " <string>")
    exitFailure

  let string = head args
  putStrLn (string ++ "\n" ++ (toNato string))

