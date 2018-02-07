module ToNato where

import Data.Char (isUpper, toLower, toUpper)
import Data.List.Split (splitOn)
import Data.List (intercalate)

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
  (if isUpper c then (map toUpper n) else n)
  where
  n = Map.findWithDefault [c] (toLower c) natoMap

translateWord :: String -> String
translateWord s = concatMap translateChar (intercalate "-" (tail (splitOn "" s)))

toNato :: String -> String
toNato [] = []
toNato s = intercalate " " (map translateWord (splitOn " " s))

