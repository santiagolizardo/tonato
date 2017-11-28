import Test.QuickCheck
import ToNato

prop_TranslateChar :: Bool
prop_TranslateChar = translateChar 'a' == "alpha"

prop_TranslateUpperChar :: Bool
prop_TranslateUpperChar = translateChar 'C' == "CHARLIE"

main :: IO()
main = do
  quickCheck prop_TranslateChar
  quickCheck prop_TranslateUpperChar
